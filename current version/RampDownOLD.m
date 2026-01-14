function RampDown(app,Ramp1)
% Modified by Jack T. Volponi 10/2/2025
% ------------------------------------------------------------------------
% Rewriting the code for better precision at lower flowrates. This version
% of RampDown should always set the initial flow rate first with small MFC,
% and add onto the initial to achieve the total flow if the total flow is
% greater than the capacity of the small mfc. It will then ramp down the
% larger MFC first, then ramp the small mfc to minimize the error.
% Modified by JTV 1/9/2026
% Changed number of timesteps to a frequency at which a signal to the MFC
% is sent. The MFCs operate at 19200 baud rate which corresponds to 1
% second for 19200 bits, or ~52 ms/bit. To send a 16-bit signal to the MFC
% it would talk ~52*16 =~ 0.83 ms which corresponds to a frequency of ~1200
% Hz. This is the max frequency since this is the fastest the MFC can
% operate. For a saftey margin I am implementing a max of 1000 Hz. I am
% going to make it so that the display only updates at 4 Hz though for
% performance.
% Modified by JTV 1/13/2026, changing function to just pass app instead of
% all these arguents

% Requires the following app properties (units in brackets):
%   app.gIVT          Total Initial Velocity [cm/s]
%   app.gPVT1         Total Plateau Velocity [cm/s]
%   app.gRDRT1        Total Velocity Rampdown Rate [cm/s^2]
%   app.gOxyComp      Oxygen Concentration [%]
%   app.A             Cross-sectional area [cm^2]
%   app.DC            Density correction factor [-]
%   app.MFCData       Struct defining MFC tags/ranges
%   app.displayFields Struct of UI fields to update
% Optional:
%   app.RampFreq    Ramp command frequency [Hz] (default 20)

arguments 
    app (1,1) {mustBeA(app,"matlab.apps.AppBase")} %App handle
    Ramp1(1,1) logical %boolean to indicate if Rampdown 1 or Rampdown 2 was pressed
end

% ---- Pull required values from app (keeps rest of code readable) ----
if Ramp1
    IVT           = app.gIVT;
    PVT           = app.gPVT1;
    RDRT          = app.gRDRT1;
else 
    IVT           = app.gPVT1;
    PVT           = app.gPVT2;
    RDRT          = app.gRDRT2;
end

OxyComp       = app.gOxyComp;
A             = app.A;
DC            = app.DC;
MFCStruct     = app.MFCData;
displayFields = app.displayFields;

% ---- Optional args ----
if isprop(app,"RampFreqHz") && ~isempty(app.RampFreqHz)
    f = app.RampFreqHz;
else
    f = 20;
end
validateattributes(f, {'numeric'},{'scalar','real','finite','>',0});

% ---- Validate critical inputs (keeps failure modes crisp) ----
validateattributes([IVT PVT RDRT OxyComp A DC], {'numeric'}, {'real','finite'});
validateattributes(MFCStruct, {}, {});        % tailor as needed
validateattributes(displayFields, {}, {});    % tailor as needed


RDT = (IVT - PVT)/RDRT; %Ramp Down Time (Total)
% N = 50; %Adjust this value to find a good spot to match the ramp time. Too low = longer pauses, Too high = more iterations (too long).
dt = RDT / N; %Fraction of the total time RDT (Ramp Down Time) dictated by N
D_dt = RDRT*dt; %Ramp down in a fraction of time. D_dt = Decrease per dt

f = 20; %Frequency 
N = floor(f*RDT); %Number of executions
dt = 1/f; %Period of timer
% Q_step = (IVT - PVT)/N; %Amount to step down each execution


%------Timer setup--------
t = timer;
t.period = dt;
t.TasksToExecute = N;
%Add the timer callback function to the matlab execution que every dt
%seconds. This does not wait for the queue lag time or the callback function
%execution time before adding another subsequent execution of the callback
%function.
t.ExecutionMode = 'fixedRate';

%Set the busy mode to drop so that the signals are continuously set at 20
%Hz. If a queue forms, the execution will be dropped and that flow will be
%set at the next execution. (Not sure if this is good since it will lead to
%the flow being set at the next execution but it will probably change the
%rate

t.BusyMode = "drop";

%Set the callback function to the helper below and pass the neccesary
%arguments as a cell array
t.TimerFcn = {@timerCallback,IVT, RDRT, OxyComp, A, DC,MFCStruct,displayFields,f};
t.StartFcn = {@timerStart,app};
t.StopFcn  = {@timerEnd,app};

%Start timer process
start(t)


%------ OLD RAMPDOWN CODE------- Removed 10/7/2025
% tic
% for i = 1:N
%     RVT = IVT + D_dt*i; %(Ramp Velocity Total decreasing) --> opposite in RampUp.m
%     Q_T1 = RVT*A*DC*0.06; %Flow Total
%     Q_B1 = OxyComp*Q_T1/100; %Flow A
%     Q_A1 = Q_T1 - Q_B1; %Flow B
% 
%     %Set Flows Here
%     setFlow(Q_A1, N2Unit);
%     setFlow(Q_B1, O2Unit);
% 
%     pause(dt);
% end
% toc
end

function timerCallback(obj,event,IVT, RDRT, OxyComp, A, DC,MFCStruct,displayFields,f)
    % Update the current total flow, and calculate the neccesary Gas A and
    % B flow rates.
    RVT = IVT - obj.period*RDRT*obj.TasksExecuted; %(Ramp Velocity Total decreasing) --> opposite in RampUp.m [cm/s]
    % RVT %Print for debugging purposes 
    Q_T1 = RVT*A*DC*0.06; %Flow Total [SLM]
    Q_B1 = OxyComp*Q_T1/100; %Flow B, O2 [SLM]
    Q_A1 = Q_T1 - Q_B1; %Flow A, N2 [SLM]

    %Calculate setpoints for each MFC and set their flows. Output the
    %setpoints for updating display fields in future\
    % f = 20;

    if mod(obj.TasksExecuted,f) == 0
        % "updated display"
        [QASmallSetpoint,QALargeSetpoint,QBSmallSetpoint,QBLargeSetpoint] = NCASetpoints(Q_A1,Q_B1,MFCStruct,true,updateFields=true,fields=displayFields);
    else
        [QASmallSetpoint,QALargeSetpoint,QBSmallSetpoint,QBLargeSetpoint] = NCASetpoints(Q_A1,Q_B1,MFCStruct,true,updateFields=false);
    end
end

function timerStart(obj,event,app)
    app.RampingActive = true;
end

function timerEnd(obj,event,app)
    app.RampingActive = false; 
end