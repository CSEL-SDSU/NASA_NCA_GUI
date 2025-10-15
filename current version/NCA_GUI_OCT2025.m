classdef NCA_GUI_OCT2025 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        NarrowChannel                   matlab.ui.Figure
        RampInformationPanel            matlab.ui.container.Panel
        SLMEditField_18                 matlab.ui.control.NumericEditField
        SLMEditField_18Label            matlab.ui.control.Label
        O2PercentPlateauVolumeSpinner   matlab.ui.control.Spinner
        O2percentplateauVolumeLabel     matlab.ui.control.Label
        SLMsEditField_15                matlab.ui.control.NumericEditField
        SLMsEditField_15Label           matlab.ui.control.Label
        O2PercentRampDownsecSpinner     matlab.ui.control.Spinner
        O2PercentRampDownsecSpinnerLabel  matlab.ui.control.Label
        OxygenRampsecEditField          matlab.ui.control.NumericEditField
        OxygenRampTimesecLabel          matlab.ui.control.Label
        RampUp1secEditField             matlab.ui.control.NumericEditField
        RampUp1secEditFieldLabel        matlab.ui.control.Label
        RampDown2secEditField           matlab.ui.control.NumericEditField
        RampDown2secEditFieldLabel      matlab.ui.control.Label
        RampDown1secEditField           matlab.ui.control.NumericEditField
        RampDown1secEditFieldLabel      matlab.ui.control.Label
        PhaseDurationsLabel             matlab.ui.control.Label
        TotalFlowReadingsPanel          matlab.ui.container.Panel
        TotalVelSetpointEditField       matlab.ui.control.NumericEditField
        TotalVelSetpointEditFieldLabel  matlab.ui.control.Label
        TotalFlowSetpointEditField      matlab.ui.control.NumericEditField
        TotalFlowSetpointEditFieldLabel  matlab.ui.control.Label
        ActualTotalVelocityEditField    matlab.ui.control.NumericEditField
        ActualTotalVelocityEditFieldLabel  matlab.ui.control.Label
        ActualTotalFlowEditField        matlab.ui.control.NumericEditField
        ActualTotalFlowEditFieldLabel   matlab.ui.control.Label
        UnitPanel                       matlab.ui.container.Panel
        AirLabel                        matlab.ui.control.Label
        E0055Label                      matlab.ui.control.Label
        O2Label_2                       matlab.ui.control.Label
        N2Label_2                       matlab.ui.control.Label
        D0011Label                      matlab.ui.control.Label
        C0011Label                      matlab.ui.control.Label
        O2Label                         matlab.ui.control.Label
        B150Label                       matlab.ui.control.Label
        N2Label                         matlab.ui.control.Label
        A150Label                       matlab.ui.control.Label
        ActualsPanel                    matlab.ui.container.Panel
        EditField_20                    matlab.ui.control.NumericEditField
        EditField_19                    matlab.ui.control.NumericEditField
        EditField_18                    matlab.ui.control.NumericEditField
        EditField_17                    matlab.ui.control.NumericEditField
        EditField_16                    matlab.ui.control.NumericEditField
        EditField_15                    matlab.ui.control.NumericEditField
        EditField_14                    matlab.ui.control.NumericEditField
        EditField_13                    matlab.ui.control.NumericEditField
        EditField_12                    matlab.ui.control.NumericEditField
        EditField_11                    matlab.ui.control.NumericEditField
        VelocityLabel                   matlab.ui.control.Label
        SLMLabel_2                      matlab.ui.control.Label
        SettingsPanel                   matlab.ui.container.Panel
        FullScaleLabel                  matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        EditField_10                    matlab.ui.control.NumericEditField
        EditField_9                     matlab.ui.control.NumericEditField
        EditField_8                     matlab.ui.control.NumericEditField
        EditField_7                     matlab.ui.control.NumericEditField
        EditField_6                     matlab.ui.control.NumericEditField
        EditField_5                     matlab.ui.control.NumericEditField
        EditField_4                     matlab.ui.control.NumericEditField
        EditField_3                     matlab.ui.control.NumericEditField
        EditField_2                     matlab.ui.control.NumericEditField
        EditField                       matlab.ui.control.NumericEditField
        SLMLabel                        matlab.ui.control.Label
        ReferencesPanel                 matlab.ui.container.Panel
        CrossSectionalAreacm2EditField  matlab.ui.control.NumericEditField
        CrossSectionalAreacm2EditFieldLabel  matlab.ui.control.Label
        KEditField_2                    matlab.ui.control.NumericEditField
        KEditField_2Label               matlab.ui.control.Label
        psiaEditField_2                 matlab.ui.control.NumericEditField
        psiaEditField_2Label            matlab.ui.control.Label
        FEditField_2                    matlab.ui.control.NumericEditField
        FEditField_2Label               matlab.ui.control.Label
        atmEditField_2                  matlab.ui.control.NumericEditField
        atmEditField_2Label             matlab.ui.control.Label
        DensityCorrectionFactorEditField  matlab.ui.control.NumericEditField
        DensityCorrectionFactorEditFieldLabel  matlab.ui.control.Label
        ChannelWidthcmSpinner           matlab.ui.control.Spinner
        ChannelWidthcmSpinnerLabel      matlab.ui.control.Label
        ReferenceTemperatureCSpinner    matlab.ui.control.Spinner
        ReferenceTemperatureCSpinnerLabel  matlab.ui.control.Label
        ReferencePressurekPaSpinner     matlab.ui.control.Spinner
        ReferencePressurekPaSpinnerLabel  matlab.ui.control.Label
        SetupPanel                      matlab.ui.container.Panel
        ChannelPressurePanel            matlab.ui.container.Panel
        ConnectArduinoButton            matlab.ui.control.Button
        SensorPressurepsiaEditField     matlab.ui.control.NumericEditField
        SensorPressurepsiaEditFieldLabel  matlab.ui.control.Label
        psiatokpaconverterLabel         matlab.ui.control.Label
        MFCInletPressurepsiaPanel       matlab.ui.container.Panel
        CEditField                      matlab.ui.control.NumericEditField
        CEditFieldLabel                 matlab.ui.control.Label
        BEditField                      matlab.ui.control.NumericEditField
        BEditFieldLabel                 matlab.ui.control.Label
        EEditField                      matlab.ui.control.NumericEditField
        EEditFieldLabel                 matlab.ui.control.Label
        DEditField                      matlab.ui.control.NumericEditField
        DEditFieldLabel                 matlab.ui.control.Label
        AEditField                      matlab.ui.control.NumericEditField
        AEditFieldLabel                 matlab.ui.control.Label
        kpaEditField                    matlab.ui.control.NumericEditField
        kpaEditFieldLabel               matlab.ui.control.Label
        psiaSpinner                     matlab.ui.control.Spinner
        psiaSpinnerLabel                matlab.ui.control.Label
        cmEditField                     matlab.ui.control.NumericEditField
        cmEditFieldLabel                matlab.ui.control.Label
        ChannelTemperatureCSpinner      matlab.ui.control.Spinner
        ChannelTemperatureCSpinnerLabel  matlab.ui.control.Label
        DesiredOxygenCompositionOxygeninMixtureSpinner  matlab.ui.control.Spinner
        DesiredOxygenCompositionOxygeninMixtureSpinnerLabel  matlab.ui.control.Label
        psiaEditField                   matlab.ui.control.NumericEditField
        psiaEditFieldLabel              matlab.ui.control.Label
        Panel_15                        matlab.ui.container.Panel
        FinalVelocity1TotalcmsSpinner   matlab.ui.control.Spinner
        FinalVelocity1TotalcmsSpinnerLabel  matlab.ui.control.Label
        RampUpRate1TotalcmssSpinner     matlab.ui.control.Spinner
        RampUpRate1TotalcmssSpinnerLabel  matlab.ui.control.Label
        SLMEditField_17                 matlab.ui.control.NumericEditField
        SLMEditField_17Label            matlab.ui.control.Label
        SLMsEditField_14                matlab.ui.control.NumericEditField
        SLMsEditField_14Label           matlab.ui.control.Label
        Panel_14                        matlab.ui.container.Panel
        PlateauVelocity2TotalcmsSpinner  matlab.ui.control.Spinner
        PlateauVelocity2TotalcmsSpinnerLabel  matlab.ui.control.Label
        RampDownRate2TotalcmssSpinner   matlab.ui.control.Spinner
        RampDownRate2TotalcmssSpinnerLabel  matlab.ui.control.Label
        SLMEditField_16                 matlab.ui.control.NumericEditField
        SLMEditField_16Label            matlab.ui.control.Label
        SLMsEditField_13                matlab.ui.control.NumericEditField
        SLMsEditField_13Label           matlab.ui.control.Label
        Panel_11                        matlab.ui.container.Panel
        SLMEditField_13                 matlab.ui.control.NumericEditField
        SLMEditField_13Label            matlab.ui.control.Label
        SLMsEditField_10                matlab.ui.control.NumericEditField
        SLMsEditField_10Label           matlab.ui.control.Label
        RampDownRate1BcmssEditField     matlab.ui.control.NumericEditField
        RampDownRate1BcmssEditFieldLabel  matlab.ui.control.Label
        PlateauVelocity1BcmsEditField   matlab.ui.control.NumericEditField
        PlateauVelocity1BcmsEditFieldLabel  matlab.ui.control.Label
        Panel_10                        matlab.ui.container.Panel
        SLMEditField_12                 matlab.ui.control.NumericEditField
        SLMEditField_12Label            matlab.ui.control.Label
        InitialVelocityBcmsEditField    matlab.ui.control.NumericEditField
        InitialVelocityBcmsEditFieldLabel  matlab.ui.control.Label
        SourceDGasDropDown              matlab.ui.control.DropDown
        SourceDGasDropDownLabel         matlab.ui.control.Label
        SourceBGasDropDown              matlab.ui.control.DropDown
        SourceBGasDropDownLabel         matlab.ui.control.Label
        Panel_7                         matlab.ui.container.Panel
        PlateauVelocity1TotalcmsSpinner  matlab.ui.control.Spinner
        PlateauVelocity1TotalcmsSpinnerLabel  matlab.ui.control.Label
        RampDownRate1TotalcmssSpinner   matlab.ui.control.Spinner
        RampDownRate1TotalcmssSpinnerLabel  matlab.ui.control.Label
        SLMEditField_9                  matlab.ui.control.NumericEditField
        SLMEditField_9Label             matlab.ui.control.Label
        SLMsEditField_7                 matlab.ui.control.NumericEditField
        SLMsEditField_7Label            matlab.ui.control.Label
        Panel_6                         matlab.ui.container.Panel
        InitialVelocityTotalcmsSpinner  matlab.ui.control.Spinner
        InitialVelocityTotalcmsSpinnerLabel  matlab.ui.control.Label
        TotalFlowSettingsLabel          matlab.ui.control.Label
        SLMEditField_8                  matlab.ui.control.NumericEditField
        SLMEditField_8Label             matlab.ui.control.Label
        Panel_5                         matlab.ui.container.Panel
        SLMEditField_7                  matlab.ui.control.NumericEditField
        SLMEditField_7Label             matlab.ui.control.Label
        SLMsEditField_6                 matlab.ui.control.NumericEditField
        SLMsEditField_6Label            matlab.ui.control.Label
        RampDownRateAcmssEditField      matlab.ui.control.NumericEditField
        RampDownRateAcmssEditFieldLabel  matlab.ui.control.Label
        PlateauVelocityAcmsEditField    matlab.ui.control.NumericEditField
        PlateauVelocityAcmsEditFieldLabel  matlab.ui.control.Label
        Panel_4                         matlab.ui.container.Panel
        SLMEditField_6                  matlab.ui.control.NumericEditField
        SLMEditField_6Label             matlab.ui.control.Label
        SLMsEditField_5                 matlab.ui.control.NumericEditField
        SLMsEditField_5Label            matlab.ui.control.Label
        RampDownRate2AcmssEditField     matlab.ui.control.NumericEditField
        RampDownRate2AcmssEditFieldLabel  matlab.ui.control.Label
        PlateauVelocity2AcmsEditField   matlab.ui.control.NumericEditField
        PlateauVelocity2AcmsEditFieldLabel  matlab.ui.control.Label
        Panel_3                         matlab.ui.container.Panel
        SLMEditField_5                  matlab.ui.control.NumericEditField
        SLMEditField_5Label             matlab.ui.control.Label
        SLMsEditField_4                 matlab.ui.control.NumericEditField
        SLMsEditField_4Label            matlab.ui.control.Label
        RampDownRate1AcmssEditField     matlab.ui.control.NumericEditField
        RampDownRate1AcmssEditFieldLabel  matlab.ui.control.Label
        PlateauVelocity1AcmsEditField   matlab.ui.control.NumericEditField
        PlateauVelocity1AcmsEditFieldLabel  matlab.ui.control.Label
        GapHeightmmSpinner              matlab.ui.control.Spinner
        GapHeightmmSpinnerLabel         matlab.ui.control.Label
        KEditField                      matlab.ui.control.NumericEditField
        KEditFieldLabel                 matlab.ui.control.Label
        FEditField                      matlab.ui.control.NumericEditField
        FEditFieldLabel                 matlab.ui.control.Label
        atmEditField                    matlab.ui.control.NumericEditField
        atmEditFieldLabel               matlab.ui.control.Label
        ChannelPressurekPaSpinner       matlab.ui.control.Spinner
        ChannelPressurekPaSpinnerLabel  matlab.ui.control.Label
        Panel_13                        matlab.ui.container.Panel
        SLMEditField_15                 matlab.ui.control.NumericEditField
        SLMEditField_15Label            matlab.ui.control.Label
        SLMsEditField_12                matlab.ui.control.NumericEditField
        SLMsEditField_12Label           matlab.ui.control.Label
        RampUpRateBcmssEditField        matlab.ui.control.NumericEditField
        RampUpRateBcmssEditFieldLabel   matlab.ui.control.Label
        FinalVelocityBcmsEditField      matlab.ui.control.NumericEditField
        FinalVelocityBcmsEditFieldLabel  matlab.ui.control.Label
        Panel_12                        matlab.ui.container.Panel
        SLMEditField_14                 matlab.ui.control.NumericEditField
        SLMEditField_14Label            matlab.ui.control.Label
        SLMsEditField_11                matlab.ui.control.NumericEditField
        SLMsEditField_11Label           matlab.ui.control.Label
        RampDownRate2BcmssEditField     matlab.ui.control.NumericEditField
        RampDownRate2BcmssEditFieldLabel  matlab.ui.control.Label
        PlateauVelocity2BcmsEditField   matlab.ui.control.NumericEditField
        PlateauVelocity2BcmsEditFieldLabel  matlab.ui.control.Label
        Panel_2                         matlab.ui.container.Panel
        SLMEditField                    matlab.ui.control.NumericEditField
        SLMEditFieldLabel               matlab.ui.control.Label
        InitialVelocityAcmsEditField    matlab.ui.control.NumericEditField
        InitialVelocityAcmsEditFieldLabel  matlab.ui.control.Label
        SourceCGasDropDown              matlab.ui.control.DropDown
        SourceCGasDropDownLabel         matlab.ui.control.Label
        SourceAGasDropDown              matlab.ui.control.DropDown
        SourceAGasDropDownLabel         matlab.ui.control.Label
        ControlsPanel                   matlab.ui.container.Panel
        Lamp                            matlab.ui.control.Lamp
        Label_2                         matlab.ui.control.Label
        ExportDataButton                matlab.ui.control.Button
        RecordDataButton                matlab.ui.control.Button
        CalculateButton                 matlab.ui.control.Button
        ReadMFCsButton                  matlab.ui.control.Button
        RampUpButton                    matlab.ui.control.Button
        RampDown1Button                 matlab.ui.control.Button
        RampDownO2Button                matlab.ui.control.Button
        RampDown2Button                 matlab.ui.control.Button
        AirVelocitycmsSpinner           matlab.ui.control.Spinner
        AirVelocitycmsSpinnerLabel      matlab.ui.control.Label
        StartAirButton                  matlab.ui.control.Button
        StopButton                      matlab.ui.control.Button
        StartButton                     matlab.ui.control.Button
    end


    properties (Access = private, SetObservable)
        % Initializing variables within the gui
        gChPress; gRefPress; ChTempK; gRefTemp;
        gOxyComp; gIVT; gChannelWidth; gGapHeight;
        gPVT1; gRDRT1;
        gPVT2; gRDRT2; gRURT; gFVT;
        gO2_percent_plateau; gO2_percent_RDR;
        DC; A; Dryvel; QDry;
        gChPressATM;
        gChPressPSIA;
        gChTemp; ChTempF;
        gConverterPsia;
        gRefPressATM; gRefPressPSIA;
        RefTempF; RefTempK
        QT1; QB1; QA1; IVA; IVB; ISA50; ISA1; ISB50; ISB1;
        QRT1; QPT1; PVB1; QPB1; PVA1; QPA1; RDRA1; QRA1; RDRB1; QRB1;
        RD1T;
        O2_vel_plateau; O2_flow_plateau; N2_vel_plateau; N2_flow_plateau; O2_Q_ramp_rate; N2_Q_ramp_rate; duration
        QRT2; QPT2; PVB2; QPB2; PVA2; QPA2; RDRA2; RDRB2; QRA2; QRB2;
        RD2T;
        QRT3; QFT; PFB; QFB; PFA; QFA; RURA; RURB; QRA3; QRB3;
        RUT;
        
        ISA2MFC; ISB2MFC; N2Unit; NonN2Unit; O2Unit; NonO2Unit;

        N2UnitSmall; N2UnitLarge; O2UnitSmall, O2UnitLarge;
        
        N2UnitSmallMax;N2UnitLargeMax;O2UnitSmallMax; O2UnitLargeMax;
        AFlowAct; BFlowAct; CFlowAct; DFlowAct; EFlowAct;
        AFlow; BFlow; CFlow; DFlow; EFlow;
        
        RSA1; RSB1;
        
        sensorPressure; pressureDevice; sensorConversion; pressureVector; toggleData; 
        
        oneSecondTimer;
        inletPressureA; inletPressureB; inletPressureC; inletPressureD; inletPressureE; 
    
    end

    methods (Access = public)
        
        function handleIncoming(app, src, ~)
            sensorOut = readline(src);

            if isempty(sensorOut)
                return
            end
            app.sensorPressure = str2double(sensorOut);
        end
        
        function sensorChange(app, ~, ~)
            app.SensorPressurepsiaEditField.Value = app.sensorPressure*0.2897 + 0.5;
            if app.toggleData == true
                app.pressureVector = [app.pressureVector app.SensorPressurepsiaEditField.Value];
            end
        end

        function collectMFC(app, ~, ~)
            
            try
                flushAlicatBuffer;

                pollArrayA = readMFC('A');
                pollArrayB = readMFC('B');
                pollArrayC = readMFC('C');
                pollArrayD = readMFC('D');
                pollArrayE = readMFC('E');

                app.AFlowAct = pollArrayA.massFlow;
                app.inletPressureA = pollArrayA.pressure;
                app.EditField_11.Value = app.AFlowAct;
                app.EditField_12.Value = app.EditField_11.Value / (app.A * app.DC * 0.06);
                app.AEditField.Value = app.inletPressureA;

                app.BFlowAct = pollArrayB.massFlow;
                app.inletPressureB = pollArrayB.pressure;
                app.EditField_13.Value = app.BFlowAct;
                app.EditField_14.Value = app.EditField_13.Value / (app.A * app.DC * 0.06);
                app.BEditField.Value = app.inletPressureB;

                app.CFlowAct = pollArrayC.massFlow;
                app.inletPressureC = pollArrayC.pressure;
                app.EditField_16.Value = app.CFlowAct / 1000;
                app.EditField_15.Value = app.EditField_16.Value / (app.A * app.DC * 0.06);
                app.CEditField.Value = app.inletPressureC;

                app.DFlowAct = pollArrayD.massFlow;
                app.inletPressureD = pollArrayD.pressure;
                app.EditField_17.Value = app.DFlowAct / 1000;
                app.EditField_18.Value = app.EditField_17.Value / (app.A * app.DC * 0.06);
                app.DEditField.Value = app.inletPressureD;

                app.EFlowAct = pollArrayE.massFlow;
                app.inletPressureE = pollArrayE.pressure;
                app.EditField_19.Value = app.EFlowAct;
                app.EditField_20.Value = app.EditField_19.Value / (app.A * app.DC * 0.06);
                app.EEditField.Value = app.inletPressureE;

                app.ActualTotalFlowEditField.Value = app.EditField_11.Value + app.EditField_13.Value + app.EditField_16.Value + app.EditField_17.Value + app.EditField_19.Value;

                app.ActualTotalVelocityEditField.Value = app.ActualTotalFlowEditField.Value / (app.A * app.DC * 0.06);

                bottleValue = app.EditField_11.Value + app.EditField_13.Value + app.EditField_16.Value + app.EditField_17.Value;
                pressureCheckGood = app.inletPressureA > 30 && app.inletPressureB > 30 && app.inletPressureC > 30 && app.inletPressureD > 30;
                pressureCheckBad = app.inletPressureA < 30 || app.inletPressureB < 30 || app.inletPressureC < 30 || app.inletPressureD < 30;
                warningMessage = ["MFC flow stopped.", "Inlet pressure too low."];

                if strcmp(app.StartButton.Enable, "off") && pressureCheckGood
                    app.StartButton.Enable = "on";
                elseif strcmp(app.StartButton.Enable, "on") && pressureCheckBad
                    app.StartButton.Enable = "off";
                end

                if pressureCheckBad && bottleValue > 1
                    StopButtonPushed(app, []);
                    uialert(app.NarrowChannel, warningMessage, "Warning", "Icon", "warning");
                end
            catch e
                disp(e)
            end

        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %For Debugging make sure you add path to helper functions 
           
            %These functions set up the default values when the gui loads up

            app.Lamp.Color = '#DA1884';
            app.pressureVector = [];
            app.toggleData = false;
            app.oneSecondTimer = timer('TimerFcn', @(~, ~)collectMFC(app), 'Period', 1, 'ExecutionMode', 'fixedRate');
            app.StartButton.Enable = "off";

            %function ChannelPressurekPaSpinnerValueChanged(app, event)
            app.gChPress = app.ChannelPressurekPaSpinner.Value;
            app.gChPressATM = (app.gChPress)/101.32;
            app.atmEditField.Value = app.gChPressATM;
            
            %Pounds per square inch pressure
            app.gChPressPSIA = (app.gChPress)*14.696/101.32;
            app.psiaEditField.Value = app.gChPressPSIA;
            %end
            
            %function ChannelTemperatureCSpinnerValueChanged(app, event)
            app.gChTemp = app.ChannelTemperatureCSpinner.Value;
            app.ChTempK = (app.gChTemp) + 273.15;
            app.KEditField.Value = app.ChTempK;
            app.ChTempF = ((app.ChTempK)-273.15)*(9/5)+32;
            app.FEditField.Value = app.ChTempF;
            %end
            
            %function GapHeightmmSpinnerValueChanged(app, event)
            app.gGapHeight = app.GapHeightmmSpinner.Value;
            app.cmEditField.Value = app.gGapHeight/10;
            %end

            %function psiaSpinnerValueChanged(app, event)
            app.gConverterPsia = app.psiaSpinner.Value;
            app.kpaEditField.Value = app.gConverterPsia*6.89476;
            %end
            
            %function ChannelWidthcmSpinnerValueChanged(app, event)
            app.gChannelWidth = app.ChannelWidthcmSpinner.Value;
            %end
            
            %function CrossSectionalAreacm2EditFieldValueChanged(app, event)
            app.A = app.CrossSectionalAreacm2EditField.Value;
            %end
            
            %function DensityCorrectionFactorEditFieldValueChanged(app, event)
            app.DC = app.DensityCorrectionFactorEditField.Value;
            %end
            
            %function ReferencePressurekPaSpinnerValueChanged(app, event)
            app.gRefPress = app.ReferencePressurekPaSpinner.Value;
            app.gRefPressATM = (app.gRefPress)/101.32;
            app.atmEditField_2.Value = app.gRefPressATM;
            app.gRefPressPSIA = (app.gRefPress)*14.696/101.32;
            app.psiaEditField_2.Value = app.gRefPressPSIA;
            %end
            
            %function ReferenceTemperatureCSpinnerValueChanged(app, event)
            app.gRefTemp = app.ReferenceTemperatureCSpinner.Value;
            app.RefTempK = (app.gRefTemp) + 273.15;
            app.KEditField_2.Value = app.RefTempK;
            app.RefTempF = ((app.RefTempK)-273.15)*(9/5)+32;
            app.FEditField_2.Value = app.RefTempF;
            %end
            
            %function DesiredOxygenCompositionOxygeninMixtureSpinnerValueChanged(app, event)
            app.gOxyComp = app.DesiredOxygenCompositionOxygeninMixtureSpinner.Value;
            %end
            
            %function AirVelocitycmsSpinnerValueChanged(app, event)
            app.Dryvel = app.AirVelocitycmsSpinner.Value;
            %end
            
            %function InitialVelocityTotalcmsSpinnerValueChanged(app, event)
            app.gIVT = app.InitialVelocityTotalcmsSpinner.Value;
            %end
            
            %function RampDownRate1TotalcmssSpinnerValueChanged(app, event)
            app.gRDRT1 = app.RampDownRate1TotalcmssSpinner.Value;
            %end
            
            %function PlateauVelocity1TotalcmsSpinnerValueChanged(app, event)
            app.gPVT1 = app.PlateauVelocity1TotalcmsSpinner.Value;
            %end

            app.PVA1 = app.PlateauVelocity1AcmsEditField.Value;
            app.PVB1 = app.PlateauVelocity1BcmsEditField.Value;
            
            %function RampDownRate2TotalcmssSpinnerValueChanged(app, event)
            app.gRDRT2 = app.RampDownRate2TotalcmssSpinner.Value;
            %end
            
            %function PlateauVelocity2TotalcmsSpinnerValueChanged(app, event)
            app.gPVT2 = app.PlateauVelocity2TotalcmsSpinner.Value;
            %end

            app.PVA2 = app.PlateauVelocity2AcmsEditField.Value;
            app.PVB2 = app.PlateauVelocity2BcmsEditField.Value;
            
            %function RampUpRate1TotalcmssSpinnerValueChanged(app, event)
            app.gRURT = app.RampUpRate1TotalcmssSpinner.Value;
            %end
            
            %function FinalVelocity1TotalcmsSpinnerValueChanged(app, event)
            app.gFVT = app.FinalVelocity1TotalcmsSpinner.Value;
            %end

            app.PFA = app.PlateauVelocityAcmsEditField.Value;
            app.PFB = app.FinalVelocityBcmsEditField.Value;
            
            %function O2PercentPlateauVolumeSpinnerValueChanged(app, event)
            app.gO2_percent_plateau = app.O2PercentPlateauVolumeSpinner.Value;
            %end
            
            %function O2PercentRampDownsecSpinnerValueChanged(app, event)
            app.gO2_percent_RDR = app.O2PercentRampDownsecSpinner.Value;
            %end
            
        end

        % Button pushed function: CalculateButton
        function CalculateButtonPushed(app, event)
            %Calculates Density Correction Factor
            app.DC =(app.gChPress/app.gRefPress)*(app.ChTempK/app.RefTempK);
            disp(app.DC)
            app.RefTempK
            app.ChTempK
            fprintf("app.gChPress = %f, app.gRefPress = %f, app.ChTempK = %f, app.RefTempK = %f \n",app.gChPress,app.gRefPress,app.ChTempK, app.RefTempK)
            app.DensityCorrectionFactorEditField.Value = app.DC;
            
            %Calculates Cross Sectional Area
            app.A = (app.gChannelWidth)*(app.gGapHeight / 10);
            app.CrossSectionalAreacm2EditField.Value = app.A;
              
            %QT1
            app.QT1 = app.gIVT * app.A* app.DC * .06;
            app.SLMEditField_8.Value = app.QT1;
            
            %QB1
            app.QB1 = (app.gOxyComp * app.QT1)/100;
            app.SLMEditField_12.Value = app.QB1;
            
            %QA1
            app.QA1 = (app.QT1 - app.QB1);
            app.SLMEditField.Value = app.QA1;
            
            %IVA
            app.IVA = app.QA1/(app.A*.06);
            app.InitialVelocityAcmsEditField.Value = app.IVA;
            
            %IVB
            app.IVB = app.QB1/(app.A*.06);
            app.InitialVelocityBcmsEditField.Value = app.IVB;
            
            %ISA50 
            app.ISA50 = app.QA1*64000/50;
            
            %ISA1
            app.ISA1 = app.QA1*64000/1;
            
            %ISB50
            app.ISB50 = app.QB1*64000/50;
            
            %ISB1
            app.ISB1 = app.QB1*64000/1;
            
            %The rest will be reacting on the ramp buttons------------------------------------------
            %Ramp Down 1 calculations were transferred to the Ramp Down 1 Button---
            
            %%Ramp Down 1 Button------------------------------------------------------------------
            
            if app.gPVT1 >= app.gIVT
                msgbox('Plateau Velocity 1 Total must be lower than Initial Velocity Total');
            else
                %QRT1
                app.QRT1 = app.gRDRT1*app.A*app.DC*6/100;
                app.SLMsEditField_7.Value = app.QRT1;
            
                %PVT1
                app.QPT1 = app.gPVT1*app.A*app.DC*6/100;
                app.SLMEditField_9.Value = app.QPT1;
            
                %PVB1
                app.PVB1 = app.gPVT1*app.gOxyComp/100;
                app.PlateauVelocity1BcmsEditField.Value = app.PVB1;
            
                %QPB1
                app.QPB1 = app.PVB1*app.A*app.DC*6/100;
                app.SLMEditField_13.Value = app.QPB1;
            
                %PVA1
                app.PVA1 = app.gPVT1-app.PVB1;
                app.PlateauVelocity1AcmsEditField.Value = app.PVA1;
            
                %QPA1
                app.QPA1 = app.PVA1*app.A*app.DC*6/100;
                app.SLMEditField_5.Value = app.QPA1;
            
                %RDRA1
                app.RDRA1 = app.gRDRT1*((app.PVA1-app.IVA)/(app.gPVT1-app.gIVT));
                if isnan(app.RDRA1)
                    msgbox('Ramp Down Rate 1-A resulted to NaN');
                else
                    app.RampDownRate1AcmssEditField.Value = app.RDRA1;
                end
            
                %QRA1
                app.QRA1 = app.RDRA1*app.A*app.DC*6/100;
                app.SLMsEditField_4.Value = app.QRA1;
            
                %RDRB1
                app.RDRB1 = app.gRDRT1*((app.PVB1-app.IVB)/(app.gPVT1-app.gIVT));
                if isnan(app.RDRB1)
                    msgbox('Ramp Down Rate 1-B resulted to NaN');
                else
                    app.RampDownRate1BcmssEditField.Value = app.RDRB1;
                end
            
                %QRB1
                app.QRB1 = app.RDRB1*app.A*app.DC*6/100;
                app.SLMsEditField_10.Value = app.QRB1;
            
                %RD1T
                app.RD1T = (app.gPVT1-app.gIVT)/(app.gRDRT1);
                if isnan(app.RD1T)
                    msgbox('Ramp Down 1 resulted to NaN');
                else
                    app.RampDown1secEditField.Value = app.RD1T;
                end
            end
            
            %Thao's code -----------------------------------------------------------------------
            app.O2_vel_plateau = app.gIVT*app.gO2_percent_plateau/100;
            app.O2_flow_plateau = app.QT1*app.gO2_percent_plateau/100;
            app.SLMEditField_18.Value = app.O2_flow_plateau; % SLM for O2
            
            app.N2_vel_plateau = app.gIVT-app.O2_vel_plateau;
            app.N2_flow_plateau = app.QT1-app.O2_flow_plateau;
            
            app.O2_Q_ramp_rate = app.QT1*app.gO2_percent_RDR/100;
            app.SLMsEditField_15.Value = app.O2_Q_ramp_rate; % SLM/s for O2
            app.N2_Q_ramp_rate = -1*app.O2_Q_ramp_rate;
            
            app.duration = (app.gO2_percent_plateau-app.gOxyComp)/app.gO2_percent_RDR;
            if isnan(app.duration)
                msgbox('Oxygen Ramp Time resulted to NaN');
            else
                app.OxygenRampsecEditField.Value = app.duration;
            end
            
            %Ramp Down 2 calculations were transferred to the Ramp Down 2 Button
            %Ramp Down 2 Button---------------------------------------------------------------------
            
            if app.gPVT2 > app.gPVT1
                msgbox('Plateau Velocity 2 Total must be lower than Plateau Velocity 1 Total');
            elseif app.gPVT2 == app.gPVT1
                app.RDRA2 = 0;
                app.RDRB2 = 0;
            else
                %QRT2
                app.QRT2 = app.gRDRT2*app.A*app.DC*6/100;
                app.SLMsEditField_13.Value = app.QRT2;
            
                %QPT2
                app.QPT2 = app.gPVT2*app.A*app.DC*6/100;
                app.SLMEditField_16.Value = app.QPT2;
            
                %PVB2
                app.PVB2 = app.gPVT2*app.gOxyComp/100;
                app.PlateauVelocity2BcmsEditField.Value = app.PVB2;
            
                %QPB2
                app.QPB2 = app.PVB2*app.A*app.DC*6/100;
                app.SLMEditField_14.Value = app.QPB2;
            
                %PVA2
                app.PVA2 = app.gPVT2-app.PVB2;
                app.PlateauVelocity2AcmsEditField.Value = app.PVA2;
            
                %QPA2
                app.QPA2 = app.PVA2*app.A*app.DC*6/100;
                app.SLMEditField_6.Value = app.QPA2;
            
                %RDRA2
                app.RDRA2 = app.gRDRT2*((app.PVA2-app.PVA1)/(app.gPVT2-app.gPVT1));
                
                if isnan(app.RDRA2)
                    msgbox('Ramp Down Rate 2-A resulted to NaN');
                else
                    app.RampDownRate2AcmssEditField.Value = app.RDRA2;
                end
            
                %if ~isnan(app.RDRA2)
                    %app.RampDownRate2AcmssEditField.Value = app.RDRA2;
                %end
            
                %QRA2
                app.QRA2 = app.RDRA2*app.A*app.DC*6/100;
                if isnan(app.QRA2)
                    msgbox('Ramp Down Flow Rate 2-A (SLM/s) resulted to NaN');
                else
                    app.SLMsEditField_5.Value = app.QRA2;
                end
            
                %RDRB2
                app.RDRB2 = app.gRDRT2*((app.PVB2-app.PVB1)/(app.gPVT2-app.gPVT1));
                if isnan(app.RDRB2)
                    msgbox('Ramp Down Rate 2-B resulted to NaN');
                else
                    app.RampDownRate2BcmssEditField.Value = app.RDRB2;
                end
            
                %QRB2
                app.QRB2 = app.RDRB2*app.A*app.DC*6/100;
                if isnan(app.QRB2)
                    msgbox('Ramp Down Flow Rate 2-B resulted to NaN');
                else
                    app.SLMsEditField_11.Value = app.QRB2;
                end
            
                %RD2T
                app.RD2T =(app.gPVT2-app.gPVT1)/(app.gRDRT2);
                if isnan(app.RD2T)
                    msgbox('Ramp Down 2 resulted to NaN');
                else
                app.RampDown2secEditField.Value = app.RD2T;
                end
            end
          
            %Ramp Up Button-------------------------------------------------------------------
            if app.gFVT < app.gPVT2
                msgbox('Final Plateau Velocity must be higher than Plateau Velocity 2 Total');
            elseif app.gFVT == app.gPVT2
                app.RURA = 0;
                app.RURB = 0;
            else
                %QRT3
                app.QRT3 = app.gRURT*app.A*app.DC*6/100;
                app.SLMsEditField_14.Value = app.QRT3;
            
                %QFT
                app.QFT = app.gFVT*app.A*app.DC*6/100;
                app.SLMEditField_17.Value = app.QFT;
                
                %PFB
                app.PFB = app.gFVT*app.gOxyComp/100;
                app.FinalVelocityBcmsEditField.Value = app.PFB;
                
                %QFB
                app.QFB = app.PFB*app.A*app.DC*6/100;
                app.SLMEditField_15.Value = app.QFB;
                
                %PFA
                app.PFA = app.gFVT-app.PFB;
                app.PlateauVelocityAcmsEditField.Value = app.PFA;
                
                %QFA
                app.QFA = app.PFA*app.A*app.DC*6/100;
                app.SLMEditField_7.Value = app.QFA;
                
                %RURA
                app.RURA = app.gRURT*((app.PFA-app.PVA2)/(app.gFVT-app.gPVT2));
                if isnan(app.RURA)
                    msgbox('Ramp Up Rate A resulted to NaN');
                else
                    app.RampDownRateAcmssEditField.Value = app.RURA;
                end
                
                %QRA3
                app.QRA3 = app.RURA*app.A*app.DC*6/100;
                if isnan(app.QRA3)
                    msgbox('Ramp Up Flow Rate A (SLM/s) resulted to NaN');
                else
                    app.SLMsEditField_6.Value = app.QRA3;
                end
                
                %RURB
                app.RURB = app.gRURT*((app.PFB-app.PVA2)/(app.gFVT-app.gPVT2));
                if isnan(app.RURB)
                    msgbox('Ramp Up Rate B resulted to NaN');
                else
                    app.RampUpRateBcmssEditField.Value = app.RURB;
                end
                
                %QRB3
                app.QRB3 = app.RURB*app.A*app.DC*6/100;
                if isnan(app.QRB3)
                    msgbox('Ramp Up Flow Rate B (SLM/s) resulted to NaN');
                else
                    app.SLMsEditField_12.Value = app.QRB3;
                end
                
                %RUT
                app.RUT = (app.gFVT-app.gPVT2)/(app.gRURT);
                if isnan(app.RUT)
                    msgbox('Ramp Up 1 resulted to NaN');
                else
                    app.RampUp1secEditField.Value = app.RUT;
                end
            end
        end

        % Value changed function: ChannelPressurekPaSpinner
        function ChannelPressurekPaSpinnerValueChanged(app, event)
            app.gChPress = app.ChannelPressurekPaSpinner.Value;
            
            %Atmospheric Pressure
            app.gChPressATM = (app.gChPress)/101.32;
            app.atmEditField.Value = app.gChPressATM;
            
            %Pounds per square inch pressure
            app.gChPressPSIA = (app.gChPress)*14.696/101.32;
            app.psiaEditField.Value = app.gChPressPSIA;
        end

        % Value changed function: ChannelTemperatureCSpinner
        function ChannelTemperatureCSpinnerValueChanged(app, event)
            app.gChTemp = app.ChannelTemperatureCSpinner.Value;
            
            %Kelvins
            app.ChTempK = (app.gChTemp) + 273.15;
            app.KEditField.Value = app.ChTempK;
            
            %Fahrenheit
            app.ChTempF = ((app.ChTempK)-273.15)*(9/5)+32;
            app.FEditField.Value = app.ChTempF;
        end

        % Value changed function: 
        % DesiredOxygenCompositionOxygeninMixtureSpinner
        function DesiredOxygenCompositionOxygeninMixtureSpinnerValueChanged(app, event)
            app.gOxyComp = app.DesiredOxygenCompositionOxygeninMixtureSpinner.Value;
            
        end

        % Button pushed function: StartAirButton
        function StartAirButtonPushed(app, event)
            format shortG
            app.QDry = app.Dryvel * app.A * app.DC * 0.06;
            app.Dryvel;
            app.QDry;
            %testing;
            
            if app.QDry < 5
                setFlow(app.QDry,'E');
                %testing;
                
                %For the display for SLPM scale
                app.EFlow = calcFlow(app.QDry,'E');
                
                %pause(app.Dryvel) %pause might not be suitable for ramp downs because multiple they would happen simultaneously
                %setFlow(0, 'E');
            elseif app.QDry > 5
                setFlow(5, 'E');
                
                %For the display for SLPM scale
                app.QDry = 5;
                app.EFlow = 64000;
                
                disp('Max Flow Rate has been reached at 5SLM')
            end
            
            %Display for SLPM scale
            app.EditField_9.Value = app.EFlow;
            %Display for SLM
            app.EditField_10.Value = app.QDry;
            %Display for Total Flow (Sum of the SLMs of MFCs A, B, C, D, and E)
            app.TotalFlowSetpointEditField.Value = app.EditField_3.Value + app.EditField_5.Value + app.EditField_6.Value + app.EditField_8.Value + app.EditField_10.Value;
            %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
            app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);
        end

        % Value changed function: AirVelocitycmsSpinner
        function AirVelocitycmsSpinnerValueChanged(app, event)
            app.Dryvel = app.AirVelocitycmsSpinner.Value;
            
        end

        % Value changed function: FinalVelocity1TotalcmsSpinner
        function FinalVelocity1TotalcmsSpinnerValueChanged(app, event)
            app.gFVT = app.FinalVelocity1TotalcmsSpinner.Value;
            
        end

        % Value changed function: GapHeightmmSpinner
        function GapHeightmmSpinnerValueChanged(app, event)
            app.gGapHeight = app.GapHeightmmSpinner.Value;

            % mm to cm
            app.cmEditField.Value = app.gGapHeight/10;
            
        end

        % Value changed function: ChannelWidthcmSpinner
        function ChannelWidthcmSpinnerValueChanged(app, event)
            app.gChannelWidth = app.ChannelWidthcmSpinner.Value;
            
        end

        % Value changed function: InitialVelocityTotalcmsSpinner
        function InitialVelocityTotalcmsSpinnerValueChanged(app, event)
            app.gIVT = app.InitialVelocityTotalcmsSpinner.Value;
          
        end

        % Value changed function: O2PercentPlateauVolumeSpinner
        function O2PercentPlateauVolumeSpinnerValueChanged(app, event)
            app.gO2_percent_plateau = app.O2PercentPlateauVolumeSpinner.Value;
            
        end

        % Value changed function: O2PercentRampDownsecSpinner
        function O2PercentRampDownsecSpinnerValueChanged(app, event)
            app.gO2_percent_RDR = app.O2PercentRampDownsecSpinner.Value;
            
        end

        % Value changed function: PlateauVelocity1TotalcmsSpinner
        function PlateauVelocity1TotalcmsSpinnerValueChanged(app, event)
            app.gPVT1 = app.PlateauVelocity1TotalcmsSpinner.Value;
            
        end

        % Value changed function: PlateauVelocity2TotalcmsSpinner
        function PlateauVelocity2TotalcmsSpinnerValueChanged(app, event)
            app.gPVT2 = app.PlateauVelocity2TotalcmsSpinner.Value;
            
        end

        % Button pushed function: RampDown1Button
        function RampDown1ButtonPushed(app, event)
            %Ramp Down 1 Button------------------------------------------------------------------
            
            %Check if the Plateau Velocity is greater than the initial
            %velocity
            if app.gPVT1 >= app.gIVT
                msgbox('Plateau Velocity 1 Total must be lower than Initial Velocity Total');
            else
                %QRT1, calculates Volume flow rampdown rate in standard L/s/min
                app.QRT1 = app.gRDRT1*app.A*app.DC*6/100;
                app.SLMsEditField_7.Value = app.QRT1;
            
                %PVT1, calculates plateau volume flow in standard L/min
                app.QPT1 = app.gPVT1*app.A*app.DC*6/100;
                app.SLMEditField_9.Value = app.QPT1;
            
                %PVB1, calculates oxygen plateau velocity in cm/s
                app.PVB1 = app.gPVT1*app.gOxyComp/100;
                app.PlateauVelocity1BcmsEditField.Value = app.PVB1;
            
                %QPB1, calculates oxygen plateau volume flow in sandard L/min
                app.QPB1 = app.PVB1*app.A*app.DC*6/100;
                app.SLMEditField_13.Value = app.QPB1;
            
                %PVA1, calculate the nitrogen plateau velocity in cm/s
                app.PVA1 = app.gPVT1-app.PVB1;
                app.PlateauVelocity1AcmsEditField.Value = app.PVA1;
            
                %QPA1, calculate the nitrogen plateau volume flow in standard L/min
                app.QPA1 = app.PVA1*app.A*app.DC*6/100;
                app.SLMEditField_5.Value = app.QPA1;
            
                %RDRA1, calculate the fraction of total rampdown rate
                %needed to ramp just gas A in cm/s/s of gas A
                app.RDRA1 = app.gRDRT1*((app.PVA1-app.IVA)/(app.gPVT1-app.gIVT));
                if isnan(app.RDRA1)
                    msgbox('Ramp Down Rate 1-A resulted to NaN');
                else
                    app.RampDownRate1AcmssEditField.Value = app.RDRA1;
                end
            
                %QRA1, calcute volume flow rampdown rate in standard L/s/min of Gas
                %A
                app.QRA1 = app.RDRA1*app.A*app.DC*6/100;
                app.SLMsEditField_4.Value = app.QRA1;
            
                %RDRB1, calculate the fraction of total rampdown rate
                %needed to ramp just gas B in cm/s/s of gas B
                app.RDRB1 = app.gRDRT1*((app.PVB1-app.IVB)/(app.gPVT1-app.gIVT));
                if isnan(app.RDRB1)
                    msgbox('Ramp Down Rate 1-B resulted to NaN');
                else
                    app.RampDownRate1BcmssEditField.Value = app.RDRB1;
                end
            
                %QRB1, calcute volume flow rampdown rate in standard L/s/min of Gas
                %B
                app.QRB1 = app.RDRB1*app.A*app.DC*6/100;
                app.SLMsEditField_10.Value = app.QRB1;
            
                %RD1T, calculate the total duration of the rampdown in
                %seconds
                app.RD1T = (app.gPVT1-app.gIVT)/(app.gRDRT1);
                if isnan(app.RD1T)
                    msgbox('Ramp Down 1 resulted to NaN');
                else
                    app.RampDown1secEditField.Value = app.RD1T;
                end
            
            
                %-----Setting the Flows for gas A and gas B------
                %For now assuming that the unit numbers dont change
                % app.N2_large = 'A';
                % app.N2_small = 'C';
                % app.O2_large = 

                %For Display Purposes
                % Set N2 Flow
                if app.N2Unit == 'A'
                    %Display for SLM Capacity
                    app.AFlow = calcFlow(app.QPA1, app.N2Unit); %1-64000
                    app.EditField.Value = app.AFlow; %1-64000
                    
                    %Display for MFC flow
                    app.EditField_3.Value = app.QPA1; %SLM
                elseif app.N2Unit == 'C'
                    %Display for SLM Capacity
                    app.CFlow = calcFlow(app.QPA1, app.N2Unit); %1-64000
                    app.EditField_4.Value = app.CFlow; %1-64000
                    
                    %Display for MFC flow
                    app.EditField_6.Value = app.QPA1; %SLM
                end
                
                % Setting Nitrogen flow rate for both MFC's

                %Set O2 Flow
                if app.O2Unit == 'B'
                    %Display for SLM Capacity
                    app.BFlow = calcFlow(app.QPB1, app.O2Unit); %1-64000
                    app.EditField_2.Value = app.BFlow; %1-64000
                    
                    %Display for MFC flow
                    app.EditField_5.Value = app.QPB1; %SLM
                elseif app.O2Unit == 'D'
                    %Display for SLM Capacity
                    app.DFlow = calcFlow(app.QPB1, app.O2Unit); %1-64000
                    app.EditField_7.Value = app.DFlow; %1-64000
                    
                    %Display for MFC flow
                    app.EditField_8.Value = app.QPB1; %SLM
                end
                %Display for Total Flow (Sum of the SLMs of MFCs A, B, C, D, and E)
                app.TotalFlowSetpointEditField.Value = app.EditField_3.Value + app.EditField_5.Value + app.EditField_6.Value + app.EditField_8.Value + app.EditField_10.Value;
                %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
                app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);
                
                %Starts the ramp down procedure by calling RampDown func
                RampDown(app.gIVT, app.gPVT1, app.gRDRT1, app.gOxyComp, app.A, app.DC, app.N2Unit, app.O2Unit)
            
                %%This snippet of code was an attempt to replicate the Igor Pro Code for Ramp Down -- didn't quite work
                %             app.RSA1 = app.QA1;
                %             app.RSB1 = app.QB1;
                %             N = 100;
                %             dt = app.RD1T/N;
                %             
                %             tic
                %             for i = 1:N
                %                 timerVal = tic;
                %                 elapsedTime = toc(timerVal);
                %                 while elapsedTime <= dt
                %                     app.RSA1 = app.RSA1 - ((app.RSA1-app.QPA1)/N); %curved slope decrease; we want a linear slope based on rate
                %                     app.RSB1 = app.RSB1 - ((app.RSB1-app.QPB1)/N); %curved slope decrease; we want a linear slope based on rate
                %                     %app.RSA1 = app.RSA1 - ((app.QA1-app.QPA1)/N);
                %                     %app.RSB1 = app.RSB1 - ((app.QB1-app.QPB1)/N);
                %                     elapsedTime = toc(timerVal);
                %                     setFlow(app.RSA1, app.N2Unit)
                %                     setFlow(app.RSB1, app.O2Unit)
                %                     %if app.RSA1 == app.QPA1 && app.RSB1 == app.QPB1
                %                         %break
                %                     %end
                %                 end
                %             toc
                %             end
            end
        end

        % Button pushed function: RampDown2Button
        function RampDown2ButtonPushed(app, event)
            %Ramp Down 2 Button---------------------------------------------------------------------
            
            if app.gPVT2 >= app.gPVT1
                msgbox('Plateau Velocity 2 Total must be lower than Plateau Velocity 1 Total');
            else
                %QRT2
                app.QRT2 = app.gRDRT2*app.A*app.DC*6/100;
                app.SLMsEditField_13.Value = app.QRT2;
            
                %QPT2
                app.QPT2 = app.gPVT2*app.A*app.DC*6/100;
                app.SLMEditField_16.Value = app.QPT2;
            
                %PVB2
                app.PVB2 = app.gPVT2*app.gOxyComp/100;
                app.PlateauVelocity2BcmsEditField.Value = app.PVB2;
            
                %QPB2
                app.QPB2 = app.PVB2*app.A*app.DC*6/100;
                app.SLMEditField_14.Value = app.QPB2;
            
                %PVA2
                app.PVA2 = app.gPVT2-app.PVB2;
                app.PlateauVelocity2AcmsEditField.Value = app.PVA2;
            
                %QPA2
                app.QPA2 = app.PVA2*app.A*app.DC*6/100;
                app.SLMEditField_6.Value = app.QPA2;
            
                %RDRA2
                app.RDRA2 = app.gRDRT2*((app.PVA2-app.PVA1)/(app.gPVT2-app.gPVT1));
                if isnan(app.RDRA2)
                    msgbox('Ramp Down Rate 2-A resulted to NaN');
                else
                    app.RampDownRate2AcmssEditField.Value = app.RDRA2;
                end
            
                %if ~isnan(app.RDRA2)
                    %app.RampDownRate2AcmssEditField.Value = app.RDRA2;
                %end
            
                %QRA2
                app.QRA2 = app.RDRA2*app.A*app.DC*6/100;
                if isnan(app.QRA2)
                    msgbox('Ramp Down Flow Rate 2-A (SLM/s) resulted to NaN');
                else
                    app.SLMsEditField_5.Value = app.QRA2;
                end
            
                %RDRB2
                app.RDRB2 = app.gRDRT2*((app.PVB2-app.PVB1)/(app.gPVT2-app.gPVT1));
                if isnan(app.RDRB2)
                    msgbox('Ramp Down Rate 2-B resulted to NaN');
                else
                    app.RampDownRate2BcmssEditField.Value = app.RDRB2;
                end
            
                %QRB2
                app.QRB2 = app.RDRB2*app.A*app.DC*6/100;
                if isnan(app.QRB2)
                    msgbox('Ramp Down Flow Rate 2-B resulted to NaN');
                else
                    app.SLMsEditField_11.Value = app.QRB2;
                end
            
                %RD2T
                app.RD2T =(app.gPVT2-app.gPVT1)/(app.gRDRT2);
                if isnan(app.RD2T)
                    msgbox('Ramp Down 2 resulted to NaN');
                else
                app.RampDown2secEditField.Value = app.RD2T;
                end
                %-----Setting the Flows for gas A and gas B------
                
                %For Display Purposes
                if app.N2Unit == 'A'
                    %Display for SLM Capacity
                    app.AFlow = calcFlow(app.QPA2, app.N2Unit);
                    app.EditField.Value = app.AFlow;
                    
                    %Display for MFC flow
                    app.EditField_3.Value = app.QPA2; %SLM
                elseif app.N2Unit == 'C'
                    %Display for SLM Capacity
                    app.CFlow = calcFlow(app.QPA2, app.N2Unit);
                    app.EditField_4.Value = app.CFlow;
                    
                    %Display for MFC flow
                    app.EditField_6.Value = app.QPA2; %SLM
                end
                
                if app.O2Unit == 'B'
                    %Display for SLM Capacity
                    app.BFlow = calcFlow(app.QPB2, app.O2Unit);
                    app.EditField_2.Value = app.BFlow;
                    
                    %Display for MFC flow
                    app.EditField_5.Value = app.QPB2; %SLM
                elseif app.O2Unit == 'D'
                    %Display for SLM Capacity
                    app.DFlow = calcFlow(app.QPB2, app.O2Unit);
                    app.EditField_7.Value = app.DFlow;
                    
                    %Display for MFC flow
                    app.EditField_8.Value = app.QPB2; %SLM
                end
                %Display for Total Flow (Sum of the SLMs of MFCs A, B, C, D, and E)
                app.TotalFlowSetpointEditField.Value = app.EditField_3.Value + app.EditField_5.Value + app.EditField_6.Value + app.EditField_8.Value + app.EditField_10.Value;
                %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
                app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);
                
                %Starts the ramp down procedure by calling RampDown func
                RampDown(app.gPVT1, app.gPVT2, app.gRDRT2, app.gOxyComp, app.A, app.DC, app.N2Unit, app.O2Unit);
            end
            
        end

        % Button pushed function: RampDownO2Button
        function RampDownO2ButtonPushed(app, event)
            %Thao's code -----------------------------------------------------------------------
            app.O2_vel_plateau = app.gIVT*app.gO2_percent_plateau/100;
            app.O2_flow_plateau = app.QT1*app.gO2_percent_plateau/100;
            app.SLMEditField_18.Value = app.O2_flow_plateau; % SLM for O2
            
            app.N2_vel_plateau = app.gIVT-app.O2_vel_plateau;
            app.N2_flow_plateau = app.QT1-app.O2_flow_plateau;
            
            app.O2_Q_ramp_rate = app.QT1*app.gO2_percent_RDR/100;
            app.SLMsEditField_15.Value = app.O2_Q_ramp_rate; % SLM/s for O2
            app.N2_Q_ramp_rate = -1*app.O2_Q_ramp_rate;
            
            app.duration = (app.gO2_percent_plateau-app.gOxyComp)/app.gO2_percent_RDR;
            if isnan(app.duration)
                msgbox('Oxygen Ramp Time resulted to NaN');
            else
                app.OxygenRampsecEditField.Value = app.duration;
            end
            
            %For Display Purposes
            if app.N2Unit == 'A'
                %Display for SLM Capacity
                app.AFlow = calcFlow(app.N2_flow_plateau, app.N2Unit);
                app.EditField.Value = app.AFlow;
                
                %Display for MFC flow
                app.EditField_3.Value = app.N2_flow_plateau; %SLM
            elseif app.N2Unit == 'C'
                %Display for SLM Capacity
                app.CFlow = calcFlow(app.N2_flow_plateau, app.N2Unit);
                app.EditField_4.Value = app.CFlow;
                
                %Display for MFC flow
                app.EditField_6.Value = app.N2_flow_plateau; %SLM
            end
            
            if app.O2Unit == 'B'
                %Display for SLM Capacity
                app.BFlow = calcFlow(app.O2_flow_plateau, app.O2Unit);
                app.EditField_2.Value = app.BFlow;
                
                %Display for MFC flow
                app.EditField_5.Value = app.O2_flow_plateau; %SLM
            elseif app.O2Unit == 'D'
                %Display for SLM Capacity
                app.DFlow = calcFlow(app.O2_flow_plateau, app.O2Unit);
                app.EditField_7.Value = app.DFlow;
                
                %Display for MFC flow
                app.EditField_8.Value = app.O2_flow_plateau; %SLM
            end
            %Display for Total Flow (Sum of the SLMs of MFCs A, B, C, D, and E) -- Although the total shouldn't change since keeping the same total flow rate
            app.TotalFlowSetpointEditField.Value = app.EditField_3.Value + app.EditField_5.Value + app.EditField_6.Value + app.EditField_8.Value + app.EditField_10.Value;
            %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
            app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);
            
            RampDownOxygen(app.QT1, app.gO2_percent_plateau, app.gO2_percent_RDR, app.gOxyComp, app.N2Unit, app.O2Unit )
        end

        % Value changed function: RampDownRate1TotalcmssSpinner
        function RampDownRate1TotalcmssSpinnerValueChanged(app, event)
            app.gRDRT1 = app.RampDownRate1TotalcmssSpinner.Value;
            
        end

        % Value changed function: RampDownRate2TotalcmssSpinner
        function RampDownRate2TotalcmssSpinnerValueChanged(app, event)
            app.gRDRT2 = app.RampDownRate2TotalcmssSpinner.Value;
            
        end

        % Button pushed function: RampUpButton
        function RampUpButtonPushed(app, event)
            if app.gFVT <= app.gPVT2
                msgbox('Final Plateau Velocity must be higher than Plateau Velocity 2 Total');
            else
                %Ramp Up Button-------------------------------------------------------------------
                %QRT3
                app.QRT3 = app.gRURT*app.A*app.DC*6/100;
                app.SLMsEditField_14.Value = app.QRT3;
                
                %QFT
                app.QFT = app.gFVT*app.A*app.DC*6/100;
                app.SLMEditField_17.Value = app.QFT;
                
                %PFB
                app.PFB = app.gFVT*app.gOxyComp/100;
                app.FinalVelocityBcmsEditField.Value = app.PFB;
                
                %QFB
                app.QFB = app.PFB*app.A*app.DC*6/100;
                app.SLMEditField_15.Value = app.QFB;
                
                %PFA
                app.PFA = app.gFVT-app.PFB;
                app.PlateauVelocityAcmsEditField.Value = app.PFA;
                
                %QFA
                app.QFA = app.PFA*app.A*app.DC*6/100;
                app.SLMEditField_7.Value = app.QFA;
                
                %RURA
                app.RURA = app.gRURT*((app.PFA-app.PVA2)/(app.gFVT-app.gPVT2));
                if isnan(app.RURA)
                    msgbox('Ramp Up Rate A resulted to NaN');
                else
                    app.RampDownRateAcmssEditField.Value = app.RURA;
                end
                
                %QRA3
                app.QRA3 = app.RURA*app.A*app.DC*6/100;
                if isnan(app.QRA3)
                    msgbox('Ramp Up Flow Rate A (SLM/s) resulted to NaN');
                else
                    app.SLMsEditField_6.Value = app.QRA3;
                end
                
                %RURB
                app.RURB = app.gRURT*((app.PFB-app.PVA2)/(app.gFVT-app.gPVT2));
                if isnan(app.RURB)
                    msgbox('Ramp Up Rate B resulted to NaN');
                else
                    app.RampUpRateBcmssEditField.Value = app.RURB;
                end
                
                %QRB3
                app.QRB3 = app.RURB*app.A*app.DC*6/100;
                if isnan(app.QRB3)
                    msgbox('Ramp Up Flow Rate B (SLM/s) resulted to NaN');
                else
                    app.SLMsEditField_12.Value = app.QRB3;
                end
                
                %RUT
                app.RUT = (app.gFVT-app.gPVT2)/(app.gRURT);
                if isnan(app.RUT)
                    msgbox('Ramp Up 1 resulted to NaN');
                else
                    app.RampUp1secEditField.Value = app.RUT;
                end
                
                %-----Setting the Flows for gas A and gas B------
                
                %For Display Purposes
                if app.N2Unit == 'A'
                    %Display for SLM Capacity
                    app.AFlow = calcFlow(app.QFA, app.N2Unit);
                    app.EditField.Value = app.AFlow;
                    
                    %Display for MFC flow
                    app.EditField_3.Value = app.QFA; %SLM
                elseif app.N2Unit == 'C'
                    %Display for SLM Capacity
                    app.CFlow = calcFlow(app.QFA, app.N2Unit);
                    app.EditField_4.Value = app.CFlow;
                    
                    %Display for MFC flow
                    app.EditField_6.Value = app.QFA; %SLM
                end
                
                if app.O2Unit == 'B'
                    %Display for SLM Capacity
                    app.BFlow = calcFlow(app.QFB, app.O2Unit);
                    app.EditField_2.Value = app.BFlow;
                    
                    %Display for MFC flow
                    app.EditField_5.Value = app.QFB; %SLM
                elseif app.O2Unit == 'D'
                    %Display for SLM Capacity
                    app.DFlow = calcFlow(app.QFB, app.O2Unit);
                    app.EditField_7.Value = app.DFlow;
                    
                    %Display for MFC flow
                    app.EditField_8.Value = app.QFB; %SLM
                end
                %Display for Total Flow (Sum of the SLMs of MFCs A, B, C, D, and E)
                app.TotalFlowSetpointEditField.Value = app.EditField_3.Value + app.EditField_5.Value + app.EditField_6.Value + app.EditField_8.Value + app.EditField_10.Value;
                %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
                app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);
                
                %Starts the ramp down procedure by calling RampDown func
                RampUp(app.gPVT2, app.gFVT, app.gRURT, app.gOxyComp, app.A, app.DC, app.N2Unit, app.O2Unit)
            end
        end

        % Value changed function: RampUpRate1TotalcmssSpinner
        function RampUpRate1TotalcmssSpinnerValueChanged(app, event)
            app.gRURT = app.RampUpRate1TotalcmssSpinner.Value;
            
        end

        % Button pushed function: ReadMFCsButton
        function ReadMFCsButtonPushed(app, event)
            if strcmp(app.oneSecondTimer.Running, "off")
                app.oneSecondTimer.start;
                app.ReadMFCsButton.Enable = "off";
            end
            
        end

        % Value changed function: ReferencePressurekPaSpinner
        function ReferencePressurekPaSpinnerValueChanged(app, event)
            app.gRefPress = app.ReferencePressurekPaSpinner.Value;
            
            %Atmospheric Pressure
            app.gRefPressATM = (app.gRefPress)/101.32;
            app.atmEditField_2.Value = app.gRefPressATM;
            
            %Pounds per square inch pressure
            app.gRefPressPSIA = (app.gRefPress)*14.696/101.32;
            app.psiaEditField_2.Value = app.gRefPressPSIA;
        end

        % Value changed function: ReferenceTemperatureCSpinner
        function ReferenceTemperatureCSpinnerValueChanged(app, event)
            app.gRefTemp = app.ReferenceTemperatureCSpinner.Value;
            
            %Kelvin
            app.RefTempK = (app.gRefTemp) + 273.15;
            app.KEditField_2.Value = app.RefTempK;
            
            %Fahrenheit
            app.RefTempF = ((app.RefTempK)-273.15)*(9/5)+32;
            app.FEditField_2.Value = app.RefTempF;
        end

        % Button pushed function: StartButton
        function StartButtonPushed(app, event)
            %------------------Before pressing Start, make sure that all lines to the MFCs are pressurized!!!---------------
            
            %-----------Calculations-----------------------------------(Independent from the 'Calculate' Button)
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            %             app.EditField_3.Value = 0;
            %             app.EditField_5.Value = 0;
            %             app.EditField_6.Value = 0;
            %             app.EditField_8.Value = 0;
            %             app.EditField_10.Value = 0;
            %            
            %             setFlow(0,'A');
            %             setFlow(0,'B');
            %             setFlow(0,'C');
            %             setFlow(0,'D');
            %             setFlow(0,'E');
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            %Calculates Density Correction Factor
            app.DC =(app.gChPress/app.gRefPress)*(app.ChTempK/app.RefTempK);
            app.DensityCorrectionFactorEditField.Value = app.DC;
            
            %Calculates Cross Sectional Area
            app.A = (app.gChannelWidth)*(app.gGapHeight / 10);
            app.CrossSectionalAreacm2EditField.Value = app.A;
            
            %QT1, calcualtes mass flow SLM
            app.QT1 = app.gIVT * app.A* app.DC * .06;
            app.SLMEditField_8.Value = app.QT1;
            
            %QB1, calcualtes B(oxygen) mass flow SLM
            app.QB1 = (app.gOxyComp * app.QT1)/100;
            app.SLMEditField_12.Value = app.QB1;
            
            %QA1, calculates A(Nitrogen) mass flow SLM
            app.QA1 = (app.QT1 - app.QB1);
            app.SLMEditField.Value = app.QA1;
            
            %IVA, calculates A velocity cm/s
            app.IVA = app.QA1/(app.A*.06);
            app.InitialVelocityAcmsEditField.Value = app.IVA;
            
            %IVB, calculates B velocity cm/s
            app.IVB = app.QB1/(app.A*.06);
            app.InitialVelocityBcmsEditField.Value = app.IVB;
            
            %ISA50, calculate the signal for the 50 SLM A MFC
            app.ISA50 = app.QA1*64000/50;
            
            %ISA1, calculate the signal for the 1 SLM A MFC
            app.ISA1 = app.QA1*64000/1;
            
            %ISB50, calculate the signal for the 50 SLM B MFC
            app.ISB50 = app.QB1*64000/50;
            
            %ISB1, calculate the signal for the 1 SLM B MFC
            app.ISB1 = app.QB1*64000/1;
            
            %Setting flow using both units for both gasses (Proper ramping
            %prep).
    
            %Specify MFC labels (Replace w/ values from dropdown if anyone
            %ever decided to make that work. David said making those work
            %is useless)
            app.N2UnitSmall = 'C';
            app.N2UnitLarge = 'A';
            app.O2UnitSmall = 'D';
            app.O2UnitLarge = 'B';
            
            %Specify maximum flow rates for each MFC [SLM]
            app.N2UnitSmallMax = 1;
            app.N2UnitLargeMax = 50;
            app.O2UnitSmallMax = 1;
            app.O2UnitLargeMax = 50;

            %Calculate flow rates
            %Calculating the 'leftover' flow for each gas that the small 
            % MFC does not have capacity for. 
            QALeftover = app.QA1 - app.N2UnitSmallMax; 
            QBLeftover = app.QB1 - app.O2UnitSmallMax; 

            %Calculate flow for gas A (N2) MFCs
            %If the leftover is less than or equal to zero, dont use large
            %MFC, otherwise, supply leftover with large MFC
            if QALeftover <= 0 
                QASmallSetpoint = app.QA1;
                QALargeSetpoint = 0;
            elseif QALeftover > 0
                QASmallSetpoint = app.N2UnitSmallMax;
                QALargeSetpoint = QALeftover;
            else
                warning('Error computing gas A Flows. Leftover computed incorrectly QALeftover = %f.2, QA1 = %f.2\n',QALeftover, app.QA1);
            end

            %Calculate flow for gas B (O2) MFCs
            if QBLeftover <= 0
                QBSmallSetpoint = app.QB1;
                QBLargeSetpoint = 0;
            elseif QBLeftover > 0
                QBSmallSetpoint = app.O2UnitSmallMax;
                QBLargeSetpoint = QBLeftover;
            else
                warning('Error computing gas B Flows. Leftover computed incorrectly QBLeftover = %f.2, QB1 = %f.2\n',QBLeftover, app.QB1);
            end
            
            %Update Display with 16 bit signal (0-64000)
            %Calculate 16 bit signal
            app.CFlow = calcFlow(QASmallSetpoint,app.N2UnitSmall);
            app.AFlow = calcFlow(QALargeSetpoint,app.N2UnitLarge);
            app.DFlow = calcFlow(QBSmallSetpoint,app.O2UnitSmall);
            app.BFlow = calcFlow(QBLargeSetpoint,app.O2UnitLarge);

            %Update Display Fields
            %16 bit Signal Display Fields
            app.EditField_4.Value = app.CFlow;
            app.EditField.Value = app.AFlow;
            app.EditField_7.Value = app.DFlow;
            app.EditField_2.Value = app.BFlow;
            
            %Flow Rate display fields
            app.EditField_6.Value = QASmallSetpoint;
            app.EditField_3.Value = QALargeSetpoint;
            app.EditField_8.Value = QBSmallSetpoint;
            app.EditField_5.Value = QBLargeSetpoint; 
                        

            %Set the flow for all MFCs (A through D)
            setFlow(QASmallSetpoint,app.N2UnitSmall)
            setFlow(QALargeSetpoint,app.N2UnitLarge)
            setFlow(QBSmallSetpoint,app.O2UnitSmall)
            setFlow(QBLargeSetpoint,app.O2UnitLarge)

            

            % %N2 Units (Will pick one depending on flow rate capacity)
            % if app.QA1 < 1 %if QA1 is less than one (64000/50 = 1280)
            %     app.ISA2MFC = num2str(app.ISA1); %use MFC Unit C for N2
            %     app.N2Unit = 'C';
            %     app.NonN2Unit = 'A';
            %     setFlow(app.QA1, app.N2Unit);
            % 
            %     %Display for SLM Capacity
            %     app.CFlow = calcFlow(app.QA1, app.N2Unit);
            %     app.EditField_4.Value = app.CFlow;
            % 
            %     %Display for MFC flow
            %     app.EditField_6.Value = app.QA1; %SLM
            %     setFlow(app.QA1, app.N2Unit);
            % else
            %     app.ISA2MFC = num2str(app.ISA50); %use MFC Unit A for N2
            %     app.N2Unit = 'A';
            %     app.NonN2Unit = 'C';
            % 
            %     %Display for SLM Capacity
            %     app.AFlow = calcFlow(app.QA1, app.N2Unit); 
            %     app.EditField.Value = app.AFlow;
            % 
            %     %Display for MFC flow
            %     app.EditField_3.Value = app.QA1; %SLM
            %     setFlow(app.QA1, app.N2Unit);
            % end
            % 
            % %O2 Units (Will pick one depending on flow rate capacity)    
            % if app.QB1 < 1 %if QB1 is less than one (64000/50 = 1280)
            %     app.ISB2MFC = num2str(app.ISB1); %use MFC Unit D for O2
            %     app.O2Unit = 'D';
            %     app.NonO2Unit = 'B';
            %     setFlow(app.QB1, app.O2Unit);
            % 
            %     %Display for SLM Capacity
            %     app.DFlow = calcFlow(app.QB1, app.O2Unit);
            %     app.EditField_7.Value = app.DFlow;
            % 
            %     %Display for MFC flow
            %     app.EditField_8.Value = app.QB1; %SLM
            %     setFlow(app.QB1, app.O2Unit);
            % else
            %     app.ISB2MFC = num2str(app.ISB50); %use MFC Unit B for O2
            %     app.O2Unit = 'B';
            %     app.NonO2Unit = 'D';
            % 
            %     %Display for SLM Capacity
            %     app.BFlow = calcFlow(app.QB1, app.O2Unit);
            %     app.EditField_2.Value = app.BFlow;
            % 
            %     %Display for MFC flow
            %     app.EditField_5.Value = app.QB1; %SLM
            %     setFlow(app.QB1, app.O2Unit);
            % end
            
            %Display for Total Flow (Sum of the SLMs of MFCs A, B, C, D, and E)
            app.TotalFlowSetpointEditField.Value = app.EditField_3.Value + app.EditField_5.Value + app.EditField_6.Value + app.EditField_8.Value + app.EditField_10.Value;
            %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
            app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);
                
        end

        % Button pushed function: StopButton
        function StopButtonPushed(app, event)
            format shortG
            setFlow(0,'A');
            setFlow(0,'B');
            setFlow(0,'C');
            setFlow(0,'D');
            setFlow(0,'E');
            
            %Display for SLPM scale
            %MFC Unit A
            app.AFlow = 0;
            app.EditField.Value = 0; %Flow Unit
            app.EditField_3.Value = 0; %SLM
            app.AFlowAct = 0;
            app.EditField_11.Value = 0;
            app.EditField_12.Value = 0;

            %MFC Unit B
            app.BFlow = 0;
            app.EditField_2.Value = 0; %Flow Unit
            app.EditField_5.Value = 0; %SLM
            app.BFlowAct = 0;
            app.EditField_13.Value = 0;
            app.EditField_14.Value = 0;

            %MFC Unit C
            app.CFlow = 0;
            app.EditField_4.Value = 0; %Flow Unit
            app.EditField_6.Value = 0; %SLM
            app.CFlowAct = 0;
            app.EditField_16.Value = 0;
            app.EditField_15.Value = 0;

            %MFC Unit D
            app.DFlow = 0;
            app.EditField_7.Value = 0; %Flow Unit
            app.EditField_8.Value = 0; %SLM
            app.DFlowAct = 0;
            app.EditField_17.Value = 0;
            app.EditField_18.Value = 0;

            %MFC Unit E
            app.EFlow = 0;
            app.EditField_9.Value = 0; %Flow Unit
            app.EditField_10.Value = 0; %SLM
            app.EFlowAct = 0;
            app.EditField_19.Value = 0;
            app.EditField_20.Value = 0;


            %TotalFlow
            app.TotalFlowSetpointEditField.Value = 0;

            %Display for Total Velocity (Sum of the cm/s of MFCs A, B, C, D, and E)
            app.TotalVelSetpointEditField.Value = app.TotalFlowSetpointEditField.Value / (app.A * app.DC * 0.06);

            %Actual Total Flow
            app.ActualTotalFlowEditField.Value = 0;

            %Actual Total Velocity
            app.ActualTotalVelocityEditField.Value = app.ActualTotalFlowEditField.Value / (app.A * app.DC * 0.06);
        end

        % Value changed function: psiaSpinner
        function psiaSpinnerValueChanged(app, event)
            app.gConverterPsia = app.psiaSpinner.Value;

            % mm to cm
            app.kpaEditField.Value = app.gConverterPsia*6.89476;
            
        end

        % Button pushed function: RecordDataButton
        function RecordDataButtonPushed(app, event)
            if app.toggleData == false
                app.toggleData = true;
                app.Lamp.Color = '#009000';
            else
                app.toggleData = false;
                app.Lamp.Color = '#DA1884';
            end
        end

        % Button pushed function: ExportDataButton
        function ExportDataButtonPushed(app, event)
            [fileNamePressure, fileLocPressure] = uiputfile('*.csv', 'Save Weight Data');
            saveLocPressure = [fileLocPressure fileNamePressure];

            try
                writematrix(app.pressureVector', saveLocPressure);
            catch ME
                uialert(app.NarrowChannel, ME.message, "Error", "Interpreter", "html");
            end

        end

        % Button pushed function: ConnectArduinoButton
        function ConnectArduinoButtonPushed(app, event)
            dlgTitle = 'COM Port';
            dlgInput = {'COM4'};
            dlgFieldSize = [1 45];
            dlgPrompt = {'Enter the COM port of the Arduino (Ex. COM4)'};
            tempPort = inputdlg(dlgPrompt, dlgTitle, dlgFieldSize, dlgInput);
            comPort = char(tempPort);

            try
                app.pressureDevice = serialport(comPort, 9600);
            catch ME
                uialert(app.NarrowChannel, ME.message, "Error", "Interpreter", "html");
                return
            end

            % configureCallback calls the function specified in the command when a terminator is available to be read from the serial port
            % addListener specifies a function to be called when a specific
            % value is changed

            readline(app.pressureDevice);
            configureTerminator(app.pressureDevice, 'CR/LF');
            configureCallback(app.pressureDevice, "terminator", @app.handleIncoming);
            addlistener(app, 'sensorPressure', 'PostSet', @app.sensorChange);

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create NarrowChannel and hide until all components are created
            app.NarrowChannel = uifigure('Visible', 'off');
            app.NarrowChannel.Color = [1 1 1];
            app.NarrowChannel.Position = [100 100 1430 949];
            app.NarrowChannel.Name = 'UI Figure';

            % Create ControlsPanel
            app.ControlsPanel = uipanel(app.NarrowChannel);
            app.ControlsPanel.BorderWidth = 2;
            app.ControlsPanel.TitlePosition = 'centertop';
            app.ControlsPanel.Title = 'Controls';
            app.ControlsPanel.FontWeight = 'bold';
            app.ControlsPanel.Position = [772 297 640 193];

            % Create StartButton
            app.StartButton = uibutton(app.ControlsPanel, 'push');
            app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton.BackgroundColor = [0.5725 0.8 0.2706];
            app.StartButton.FontWeight = 'bold';
            app.StartButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.StartButton.Position = [370 20 100 22];
            app.StartButton.Text = 'Start';

            % Create StopButton
            app.StopButton = uibutton(app.ControlsPanel, 'push');
            app.StopButton.ButtonPushedFcn = createCallbackFcn(app, @StopButtonPushed, true);
            app.StopButton.BackgroundColor = [1 0.3882 0.502];
            app.StopButton.FontWeight = 'bold';
            app.StopButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.StopButton.Position = [502 20 103 22];
            app.StopButton.Text = 'Stop';

            % Create StartAirButton
            app.StartAirButton = uibutton(app.ControlsPanel, 'push');
            app.StartAirButton.ButtonPushedFcn = createCallbackFcn(app, @StartAirButtonPushed, true);
            app.StartAirButton.BackgroundColor = [0.8 0.8 0.8];
            app.StartAirButton.FontWeight = 'bold';
            app.StartAirButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.StartAirButton.Position = [40 20 100 23];
            app.StartAirButton.Text = 'Start Air';

            % Create AirVelocitycmsSpinnerLabel
            app.AirVelocitycmsSpinnerLabel = uilabel(app.ControlsPanel);
            app.AirVelocitycmsSpinnerLabel.HorizontalAlignment = 'center';
            app.AirVelocitycmsSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.AirVelocitycmsSpinnerLabel.Position = [211 45 126 22];
            app.AirVelocitycmsSpinnerLabel.Text = 'Air Velocity (cm/s)';

            % Create AirVelocitycmsSpinner
            app.AirVelocitycmsSpinner = uispinner(app.ControlsPanel);
            app.AirVelocitycmsSpinner.Limits = [0 25];
            app.AirVelocitycmsSpinner.ValueChangedFcn = createCallbackFcn(app, @AirVelocitycmsSpinnerValueChanged, true);
            app.AirVelocitycmsSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.AirVelocitycmsSpinner.BackgroundColor = [0 1 1];
            app.AirVelocitycmsSpinner.Position = [240 20 71 22];
            app.AirVelocitycmsSpinner.Value = 15;

            % Create RampDown2Button
            app.RampDown2Button = uibutton(app.ControlsPanel, 'push');
            app.RampDown2Button.ButtonPushedFcn = createCallbackFcn(app, @RampDown2ButtonPushed, true);
            app.RampDown2Button.BackgroundColor = [0.8 0.8 0.8];
            app.RampDown2Button.FontWeight = 'bold';
            app.RampDown2Button.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDown2Button.Position = [370 74 100 22];
            app.RampDown2Button.Text = 'Ramp Down 2';

            % Create RampDownO2Button
            app.RampDownO2Button = uibutton(app.ControlsPanel, 'push');
            app.RampDownO2Button.ButtonPushedFcn = createCallbackFcn(app, @RampDownO2ButtonPushed, true);
            app.RampDownO2Button.BackgroundColor = [0.8 0.8 0.8];
            app.RampDownO2Button.FontWeight = 'bold';
            app.RampDownO2Button.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownO2Button.Position = [502 74 103 22];
            app.RampDownO2Button.Text = 'Ramp Down O2';

            % Create RampDown1Button
            app.RampDown1Button = uibutton(app.ControlsPanel, 'push');
            app.RampDown1Button.ButtonPushedFcn = createCallbackFcn(app, @RampDown1ButtonPushed, true);
            app.RampDown1Button.BackgroundColor = [0.8 0.8 0.8];
            app.RampDown1Button.FontWeight = 'bold';
            app.RampDown1Button.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDown1Button.Position = [370 124 100 22];
            app.RampDown1Button.Text = 'Ramp Down 1';

            % Create RampUpButton
            app.RampUpButton = uibutton(app.ControlsPanel, 'push');
            app.RampUpButton.ButtonPushedFcn = createCallbackFcn(app, @RampUpButtonPushed, true);
            app.RampUpButton.BackgroundColor = [0.8 0.8 0.8];
            app.RampUpButton.FontWeight = 'bold';
            app.RampUpButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUpButton.Position = [502 123 103 22];
            app.RampUpButton.Text = 'Ramp Up';

            % Create ReadMFCsButton
            app.ReadMFCsButton = uibutton(app.ControlsPanel, 'push');
            app.ReadMFCsButton.ButtonPushedFcn = createCallbackFcn(app, @ReadMFCsButtonPushed, true);
            app.ReadMFCsButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.ReadMFCsButton.FontWeight = 'bold';
            app.ReadMFCsButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ReadMFCsButton.Position = [40 73 100 22];
            app.ReadMFCsButton.Text = 'Read MFCs';

            % Create CalculateButton
            app.CalculateButton = uibutton(app.ControlsPanel, 'push');
            app.CalculateButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateButtonPushed, true);
            app.CalculateButton.BackgroundColor = [0.8 0.8 0.8];
            app.CalculateButton.FontWeight = 'bold';
            app.CalculateButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.CalculateButton.Position = [222 73 103 22];
            app.CalculateButton.Text = 'Calculate';

            % Create RecordDataButton
            app.RecordDataButton = uibutton(app.ControlsPanel, 'push');
            app.RecordDataButton.ButtonPushedFcn = createCallbackFcn(app, @RecordDataButtonPushed, true);
            app.RecordDataButton.BackgroundColor = [0.8 0.8 0.8];
            app.RecordDataButton.FontWeight = 'bold';
            app.RecordDataButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RecordDataButton.Position = [40 118 100 23];
            app.RecordDataButton.Text = 'Record Data';

            % Create ExportDataButton
            app.ExportDataButton = uibutton(app.ControlsPanel, 'push');
            app.ExportDataButton.ButtonPushedFcn = createCallbackFcn(app, @ExportDataButtonPushed, true);
            app.ExportDataButton.BackgroundColor = [0.8 0.8 0.8];
            app.ExportDataButton.FontWeight = 'bold';
            app.ExportDataButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ExportDataButton.Position = [220 118 103 23];
            app.ExportDataButton.Text = 'Export Data';

            % Create Label_2
            app.Label_2 = uilabel(app.ControlsPanel);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.Label_2.Position = [128 119 25 22];
            app.Label_2.Text = '';

            % Create Lamp
            app.Lamp = uilamp(app.ControlsPanel);
            app.Lamp.Position = [168 120 20 20];

            % Create SetupPanel
            app.SetupPanel = uipanel(app.NarrowChannel);
            app.SetupPanel.BorderWidth = 2;
            app.SetupPanel.TitlePosition = 'centertop';
            app.SetupPanel.Title = 'Setup';
            app.SetupPanel.FontWeight = 'bold';
            app.SetupPanel.Position = [22 508 1389 424];

            % Create Panel_2
            app.Panel_2 = uipanel(app.SetupPanel);
            app.Panel_2.Position = [0 204 451 70];

            % Create SourceAGasDropDownLabel
            app.SourceAGasDropDownLabel = uilabel(app.Panel_2);
            app.SourceAGasDropDownLabel.HorizontalAlignment = 'right';
            app.SourceAGasDropDownLabel.VerticalAlignment = 'top';
            app.SourceAGasDropDownLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceAGasDropDownLabel.Position = [86 42 80 15];
            app.SourceAGasDropDownLabel.Text = 'Source A Gas';

            % Create SourceAGasDropDown
            app.SourceAGasDropDown = uidropdown(app.Panel_2);
            app.SourceAGasDropDown.Items = {'O2', 'N2', 'Air', ''};
            app.SourceAGasDropDown.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceAGasDropDown.BackgroundColor = [0.96078431372549 0.96078431372549 0.96078431372549];
            app.SourceAGasDropDown.Position = [175 38 60 22];
            app.SourceAGasDropDown.Value = 'N2';

            % Create SourceCGasDropDownLabel
            app.SourceCGasDropDownLabel = uilabel(app.Panel_2);
            app.SourceCGasDropDownLabel.HorizontalAlignment = 'right';
            app.SourceCGasDropDownLabel.VerticalAlignment = 'top';
            app.SourceCGasDropDownLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceCGasDropDownLabel.Position = [266 42 81 15];
            app.SourceCGasDropDownLabel.Text = 'Source C Gas';

            % Create SourceCGasDropDown
            app.SourceCGasDropDown = uidropdown(app.Panel_2);
            app.SourceCGasDropDown.Items = {'O2', 'N2', 'Air', ''};
            app.SourceCGasDropDown.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceCGasDropDown.BackgroundColor = [0.96078431372549 0.96078431372549 0.96078431372549];
            app.SourceCGasDropDown.Position = [356 38 60 22];
            app.SourceCGasDropDown.Value = 'N2';

            % Create InitialVelocityAcmsEditFieldLabel
            app.InitialVelocityAcmsEditFieldLabel = uilabel(app.Panel_2);
            app.InitialVelocityAcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.InitialVelocityAcmsEditFieldLabel.VerticalAlignment = 'top';
            app.InitialVelocityAcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.InitialVelocityAcmsEditFieldLabel.Position = [50 13 126 15];
            app.InitialVelocityAcmsEditFieldLabel.Text = 'Initial Velocity- A (cm/s)';

            % Create InitialVelocityAcmsEditField
            app.InitialVelocityAcmsEditField = uieditfield(app.Panel_2, 'numeric');
            app.InitialVelocityAcmsEditField.Editable = 'off';
            app.InitialVelocityAcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.InitialVelocityAcmsEditField.Position = [181 9 54 22];

            % Create SLMEditFieldLabel
            app.SLMEditFieldLabel = uilabel(app.Panel_2);
            app.SLMEditFieldLabel.HorizontalAlignment = 'right';
            app.SLMEditFieldLabel.VerticalAlignment = 'top';
            app.SLMEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditFieldLabel.Position = [331 13 25 15];
            app.SLMEditFieldLabel.Text = 'SLM';

            % Create SLMEditField
            app.SLMEditField = uieditfield(app.Panel_2, 'numeric');
            app.SLMEditField.Editable = 'off';
            app.SLMEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField.Position = [362 9 54 22];

            % Create Panel_12
            app.Panel_12 = uipanel(app.SetupPanel);
            app.Panel_12.Position = [937 66 450 70];

            % Create PlateauVelocity2BcmsEditFieldLabel
            app.PlateauVelocity2BcmsEditFieldLabel = uilabel(app.Panel_12);
            app.PlateauVelocity2BcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.PlateauVelocity2BcmsEditFieldLabel.VerticalAlignment = 'top';
            app.PlateauVelocity2BcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity2BcmsEditFieldLabel.Position = [30 12 146 15];
            app.PlateauVelocity2BcmsEditFieldLabel.Text = 'Plateau Velocity 2-B (cm/s)';

            % Create PlateauVelocity2BcmsEditField
            app.PlateauVelocity2BcmsEditField = uieditfield(app.Panel_12, 'numeric');
            app.PlateauVelocity2BcmsEditField.Editable = 'off';
            app.PlateauVelocity2BcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity2BcmsEditField.Position = [181 8 54 22];

            % Create RampDownRate2BcmssEditFieldLabel
            app.RampDownRate2BcmssEditFieldLabel = uilabel(app.Panel_12);
            app.RampDownRate2BcmssEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDownRate2BcmssEditFieldLabel.VerticalAlignment = 'top';
            app.RampDownRate2BcmssEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate2BcmssEditFieldLabel.Position = [12 44 164 15];
            app.RampDownRate2BcmssEditFieldLabel.Text = 'Ramp Down Rate 2-B (cm/s/s)';

            % Create RampDownRate2BcmssEditField
            app.RampDownRate2BcmssEditField = uieditfield(app.Panel_12, 'numeric');
            app.RampDownRate2BcmssEditField.Editable = 'off';
            app.RampDownRate2BcmssEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate2BcmssEditField.Position = [181 40 54 22];

            % Create SLMsEditField_11Label
            app.SLMsEditField_11Label = uilabel(app.Panel_12);
            app.SLMsEditField_11Label.HorizontalAlignment = 'right';
            app.SLMsEditField_11Label.VerticalAlignment = 'top';
            app.SLMsEditField_11Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_11Label.Position = [324 45 37 15];
            app.SLMsEditField_11Label.Text = 'SLM/s';

            % Create SLMsEditField_11
            app.SLMsEditField_11 = uieditfield(app.Panel_12, 'numeric');
            app.SLMsEditField_11.Editable = 'off';
            app.SLMsEditField_11.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_11.Position = [364 41 54 22];

            % Create SLMEditField_14Label
            app.SLMEditField_14Label = uilabel(app.Panel_12);
            app.SLMEditField_14Label.HorizontalAlignment = 'right';
            app.SLMEditField_14Label.VerticalAlignment = 'top';
            app.SLMEditField_14Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_14Label.Position = [333 13 28 15];
            app.SLMEditField_14Label.Text = 'SLM';

            % Create SLMEditField_14
            app.SLMEditField_14 = uieditfield(app.Panel_12, 'numeric');
            app.SLMEditField_14.Editable = 'off';
            app.SLMEditField_14.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_14.Position = [364 9 54 22];

            % Create Panel_13
            app.Panel_13 = uipanel(app.SetupPanel);
            app.Panel_13.Position = [937 0 450 68];

            % Create FinalVelocityBcmsEditFieldLabel
            app.FinalVelocityBcmsEditFieldLabel = uilabel(app.Panel_13);
            app.FinalVelocityBcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.FinalVelocityBcmsEditFieldLabel.VerticalAlignment = 'top';
            app.FinalVelocityBcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FinalVelocityBcmsEditFieldLabel.Position = [55 10 121 15];
            app.FinalVelocityBcmsEditFieldLabel.Text = 'Final Velocity-B (cm/s)';

            % Create FinalVelocityBcmsEditField
            app.FinalVelocityBcmsEditField = uieditfield(app.Panel_13, 'numeric');
            app.FinalVelocityBcmsEditField.Editable = 'off';
            app.FinalVelocityBcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FinalVelocityBcmsEditField.Position = [181 6 54 22];

            % Create RampUpRateBcmssEditFieldLabel
            app.RampUpRateBcmssEditFieldLabel = uilabel(app.Panel_13);
            app.RampUpRateBcmssEditFieldLabel.HorizontalAlignment = 'right';
            app.RampUpRateBcmssEditFieldLabel.VerticalAlignment = 'top';
            app.RampUpRateBcmssEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUpRateBcmssEditFieldLabel.Position = [38 42 138 15];
            app.RampUpRateBcmssEditFieldLabel.Text = 'Ramp Up Rate-B (cm/s/s)';

            % Create RampUpRateBcmssEditField
            app.RampUpRateBcmssEditField = uieditfield(app.Panel_13, 'numeric');
            app.RampUpRateBcmssEditField.Editable = 'off';
            app.RampUpRateBcmssEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUpRateBcmssEditField.Position = [181 38 54 22];

            % Create SLMsEditField_12Label
            app.SLMsEditField_12Label = uilabel(app.Panel_13);
            app.SLMsEditField_12Label.HorizontalAlignment = 'right';
            app.SLMsEditField_12Label.VerticalAlignment = 'top';
            app.SLMsEditField_12Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_12Label.Position = [324 43 37 15];
            app.SLMsEditField_12Label.Text = 'SLM/s';

            % Create SLMsEditField_12
            app.SLMsEditField_12 = uieditfield(app.Panel_13, 'numeric');
            app.SLMsEditField_12.Editable = 'off';
            app.SLMsEditField_12.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_12.Position = [364 39 54 22];

            % Create SLMEditField_15Label
            app.SLMEditField_15Label = uilabel(app.Panel_13);
            app.SLMEditField_15Label.HorizontalAlignment = 'right';
            app.SLMEditField_15Label.VerticalAlignment = 'top';
            app.SLMEditField_15Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_15Label.Position = [333 11 28 15];
            app.SLMEditField_15Label.Text = 'SLM';

            % Create SLMEditField_15
            app.SLMEditField_15 = uieditfield(app.Panel_13, 'numeric');
            app.SLMEditField_15.Editable = 'off';
            app.SLMEditField_15.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_15.Position = [364 7 54 22];

            % Create ChannelPressurekPaSpinnerLabel
            app.ChannelPressurekPaSpinnerLabel = uilabel(app.SetupPanel);
            app.ChannelPressurekPaSpinnerLabel.HorizontalAlignment = 'right';
            app.ChannelPressurekPaSpinnerLabel.VerticalAlignment = 'top';
            app.ChannelPressurekPaSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelPressurekPaSpinnerLabel.Position = [191 345 136 15];
            app.ChannelPressurekPaSpinnerLabel.Text = 'Channel Pressure (kPa)';

            % Create ChannelPressurekPaSpinner
            app.ChannelPressurekPaSpinner = uispinner(app.SetupPanel);
            app.ChannelPressurekPaSpinner.ValueChangedFcn = createCallbackFcn(app, @ChannelPressurekPaSpinnerValueChanged, true);
            app.ChannelPressurekPaSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelPressurekPaSpinner.BackgroundColor = [0 1 1];
            app.ChannelPressurekPaSpinner.Position = [342 341 68 22];
            app.ChannelPressurekPaSpinner.Value = 101.32;

            % Create atmEditFieldLabel
            app.atmEditFieldLabel = uilabel(app.SetupPanel);
            app.atmEditFieldLabel.HorizontalAlignment = 'right';
            app.atmEditFieldLabel.VerticalAlignment = 'top';
            app.atmEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.atmEditFieldLabel.Position = [483 345 25 15];
            app.atmEditFieldLabel.Text = 'atm';

            % Create atmEditField
            app.atmEditField = uieditfield(app.SetupPanel, 'numeric');
            app.atmEditField.Editable = 'off';
            app.atmEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.atmEditField.Position = [420 341 64 22];
            app.atmEditField.Value = 1;

            % Create FEditFieldLabel
            app.FEditFieldLabel = uilabel(app.SetupPanel);
            app.FEditFieldLabel.HorizontalAlignment = 'right';
            app.FEditFieldLabel.VerticalAlignment = 'top';
            app.FEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FEditFieldLabel.Position = [483 316 15 15];
            app.FEditFieldLabel.Text = 'F';

            % Create FEditField
            app.FEditField = uieditfield(app.SetupPanel, 'numeric');
            app.FEditField.Editable = 'off';
            app.FEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FEditField.Position = [420 312 64 22];
            app.FEditField.Value = 77;

            % Create KEditFieldLabel
            app.KEditFieldLabel = uilabel(app.SetupPanel);
            app.KEditFieldLabel.HorizontalAlignment = 'right';
            app.KEditFieldLabel.VerticalAlignment = 'top';
            app.KEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.KEditFieldLabel.Position = [586 316 15 15];
            app.KEditFieldLabel.Text = 'K';

            % Create KEditField
            app.KEditField = uieditfield(app.SetupPanel, 'numeric');
            app.KEditField.Editable = 'off';
            app.KEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.KEditField.Position = [523 312 64 22];
            app.KEditField.Value = 298.1;

            % Create GapHeightmmSpinnerLabel
            app.GapHeightmmSpinnerLabel = uilabel(app.SetupPanel);
            app.GapHeightmmSpinnerLabel.HorizontalAlignment = 'right';
            app.GapHeightmmSpinnerLabel.VerticalAlignment = 'top';
            app.GapHeightmmSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.GapHeightmmSpinnerLabel.Position = [232 281 97 22];
            app.GapHeightmmSpinnerLabel.Text = 'Gap Height (mm)';

            % Create GapHeightmmSpinner
            app.GapHeightmmSpinner = uispinner(app.SetupPanel);
            app.GapHeightmmSpinner.ValueChangedFcn = createCallbackFcn(app, @GapHeightmmSpinnerValueChanged, true);
            app.GapHeightmmSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.GapHeightmmSpinner.BackgroundColor = [0 1 1];
            app.GapHeightmmSpinner.Position = [342 284 68 22];
            app.GapHeightmmSpinner.Value = 5;

            % Create Panel_3
            app.Panel_3 = uipanel(app.SetupPanel);
            app.Panel_3.Position = [0 135 451 70];

            % Create PlateauVelocity1AcmsEditFieldLabel
            app.PlateauVelocity1AcmsEditFieldLabel = uilabel(app.Panel_3);
            app.PlateauVelocity1AcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.PlateauVelocity1AcmsEditFieldLabel.VerticalAlignment = 'top';
            app.PlateauVelocity1AcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity1AcmsEditFieldLabel.Position = [30 12 146 15];
            app.PlateauVelocity1AcmsEditFieldLabel.Text = 'Plateau Velocity 1-A (cm/s)';

            % Create PlateauVelocity1AcmsEditField
            app.PlateauVelocity1AcmsEditField = uieditfield(app.Panel_3, 'numeric');
            app.PlateauVelocity1AcmsEditField.Editable = 'off';
            app.PlateauVelocity1AcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity1AcmsEditField.Position = [181 8 54 22];

            % Create RampDownRate1AcmssEditFieldLabel
            app.RampDownRate1AcmssEditFieldLabel = uilabel(app.Panel_3);
            app.RampDownRate1AcmssEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDownRate1AcmssEditFieldLabel.VerticalAlignment = 'top';
            app.RampDownRate1AcmssEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate1AcmssEditFieldLabel.Position = [12 44 164 15];
            app.RampDownRate1AcmssEditFieldLabel.Text = 'Ramp Down Rate 1-A (cm/s/s)';

            % Create RampDownRate1AcmssEditField
            app.RampDownRate1AcmssEditField = uieditfield(app.Panel_3, 'numeric');
            app.RampDownRate1AcmssEditField.Editable = 'off';
            app.RampDownRate1AcmssEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate1AcmssEditField.Position = [181 40 54 22];

            % Create SLMsEditField_4Label
            app.SLMsEditField_4Label = uilabel(app.Panel_3);
            app.SLMsEditField_4Label.HorizontalAlignment = 'right';
            app.SLMsEditField_4Label.VerticalAlignment = 'top';
            app.SLMsEditField_4Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_4Label.Position = [322 48 34 15];
            app.SLMsEditField_4Label.Text = 'SLM/s';

            % Create SLMsEditField_4
            app.SLMsEditField_4 = uieditfield(app.Panel_3, 'numeric');
            app.SLMsEditField_4.Editable = 'off';
            app.SLMsEditField_4.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_4.Position = [362 44 54 22];

            % Create SLMEditField_5Label
            app.SLMEditField_5Label = uilabel(app.Panel_3);
            app.SLMEditField_5Label.HorizontalAlignment = 'right';
            app.SLMEditField_5Label.VerticalAlignment = 'top';
            app.SLMEditField_5Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_5Label.Position = [331 16 25 15];
            app.SLMEditField_5Label.Text = 'SLM';

            % Create SLMEditField_5
            app.SLMEditField_5 = uieditfield(app.Panel_3, 'numeric');
            app.SLMEditField_5.Editable = 'off';
            app.SLMEditField_5.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_5.Position = [362 12 54 22];

            % Create Panel_4
            app.Panel_4 = uipanel(app.SetupPanel);
            app.Panel_4.Position = [0 66 451 70];

            % Create PlateauVelocity2AcmsEditFieldLabel
            app.PlateauVelocity2AcmsEditFieldLabel = uilabel(app.Panel_4);
            app.PlateauVelocity2AcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.PlateauVelocity2AcmsEditFieldLabel.VerticalAlignment = 'top';
            app.PlateauVelocity2AcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity2AcmsEditFieldLabel.Position = [30 12 147 15];
            app.PlateauVelocity2AcmsEditFieldLabel.Text = 'Plateau Velocity 2-A (cm/s)';

            % Create PlateauVelocity2AcmsEditField
            app.PlateauVelocity2AcmsEditField = uieditfield(app.Panel_4, 'numeric');
            app.PlateauVelocity2AcmsEditField.Editable = 'off';
            app.PlateauVelocity2AcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity2AcmsEditField.Position = [181 8 54 22];

            % Create RampDownRate2AcmssEditFieldLabel
            app.RampDownRate2AcmssEditFieldLabel = uilabel(app.Panel_4);
            app.RampDownRate2AcmssEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDownRate2AcmssEditFieldLabel.VerticalAlignment = 'top';
            app.RampDownRate2AcmssEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate2AcmssEditFieldLabel.Position = [12 44 165 15];
            app.RampDownRate2AcmssEditFieldLabel.Text = 'Ramp Down Rate 2-A (cm/s/s)';

            % Create RampDownRate2AcmssEditField
            app.RampDownRate2AcmssEditField = uieditfield(app.Panel_4, 'numeric');
            app.RampDownRate2AcmssEditField.Editable = 'off';
            app.RampDownRate2AcmssEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate2AcmssEditField.Position = [181 40 54 22];

            % Create SLMsEditField_5Label
            app.SLMsEditField_5Label = uilabel(app.Panel_4);
            app.SLMsEditField_5Label.HorizontalAlignment = 'right';
            app.SLMsEditField_5Label.VerticalAlignment = 'top';
            app.SLMsEditField_5Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_5Label.Position = [322 45 34 15];
            app.SLMsEditField_5Label.Text = 'SLM/s';

            % Create SLMsEditField_5
            app.SLMsEditField_5 = uieditfield(app.Panel_4, 'numeric');
            app.SLMsEditField_5.Editable = 'off';
            app.SLMsEditField_5.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_5.Position = [362 41 54 22];

            % Create SLMEditField_6Label
            app.SLMEditField_6Label = uilabel(app.Panel_4);
            app.SLMEditField_6Label.HorizontalAlignment = 'right';
            app.SLMEditField_6Label.VerticalAlignment = 'top';
            app.SLMEditField_6Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_6Label.Position = [331 13 25 15];
            app.SLMEditField_6Label.Text = 'SLM';

            % Create SLMEditField_6
            app.SLMEditField_6 = uieditfield(app.Panel_4, 'numeric');
            app.SLMEditField_6.Editable = 'off';
            app.SLMEditField_6.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_6.Position = [362 9 54 22];

            % Create Panel_5
            app.Panel_5 = uipanel(app.SetupPanel);
            app.Panel_5.Position = [0 0 451 68];

            % Create PlateauVelocityAcmsEditFieldLabel
            app.PlateauVelocityAcmsEditFieldLabel = uilabel(app.Panel_5);
            app.PlateauVelocityAcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.PlateauVelocityAcmsEditFieldLabel.VerticalAlignment = 'top';
            app.PlateauVelocityAcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocityAcmsEditFieldLabel.Position = [40 10 137 15];
            app.PlateauVelocityAcmsEditFieldLabel.Text = 'Plateau Velocity-A (cm/s)';

            % Create PlateauVelocityAcmsEditField
            app.PlateauVelocityAcmsEditField = uieditfield(app.Panel_5, 'numeric');
            app.PlateauVelocityAcmsEditField.Editable = 'off';
            app.PlateauVelocityAcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocityAcmsEditField.Position = [181 6 54 22];

            % Create RampDownRateAcmssEditFieldLabel
            app.RampDownRateAcmssEditFieldLabel = uilabel(app.Panel_5);
            app.RampDownRateAcmssEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDownRateAcmssEditFieldLabel.VerticalAlignment = 'top';
            app.RampDownRateAcmssEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRateAcmssEditFieldLabel.Position = [22 42 155 15];
            app.RampDownRateAcmssEditFieldLabel.Text = 'Ramp Down Rate-A (cm/s/s)';

            % Create RampDownRateAcmssEditField
            app.RampDownRateAcmssEditField = uieditfield(app.Panel_5, 'numeric');
            app.RampDownRateAcmssEditField.Editable = 'off';
            app.RampDownRateAcmssEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRateAcmssEditField.Position = [181 38 54 22];

            % Create SLMsEditField_6Label
            app.SLMsEditField_6Label = uilabel(app.Panel_5);
            app.SLMsEditField_6Label.HorizontalAlignment = 'right';
            app.SLMsEditField_6Label.VerticalAlignment = 'top';
            app.SLMsEditField_6Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_6Label.Position = [322 43 34 15];
            app.SLMsEditField_6Label.Text = 'SLM/s';

            % Create SLMsEditField_6
            app.SLMsEditField_6 = uieditfield(app.Panel_5, 'numeric');
            app.SLMsEditField_6.Editable = 'off';
            app.SLMsEditField_6.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_6.Position = [362 39 54 22];

            % Create SLMEditField_7Label
            app.SLMEditField_7Label = uilabel(app.Panel_5);
            app.SLMEditField_7Label.HorizontalAlignment = 'right';
            app.SLMEditField_7Label.VerticalAlignment = 'top';
            app.SLMEditField_7Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_7Label.Position = [331 11 25 15];
            app.SLMEditField_7Label.Text = 'SLM';

            % Create SLMEditField_7
            app.SLMEditField_7 = uieditfield(app.Panel_5, 'numeric');
            app.SLMEditField_7.Editable = 'off';
            app.SLMEditField_7.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_7.Position = [362 7 54 22];

            % Create Panel_6
            app.Panel_6 = uipanel(app.SetupPanel);
            app.Panel_6.Position = [450 204 487 70];

            % Create SLMEditField_8Label
            app.SLMEditField_8Label = uilabel(app.Panel_6);
            app.SLMEditField_8Label.HorizontalAlignment = 'right';
            app.SLMEditField_8Label.VerticalAlignment = 'top';
            app.SLMEditField_8Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_8Label.Position = [351 12 28 15];
            app.SLMEditField_8Label.Text = 'SLM';

            % Create SLMEditField_8
            app.SLMEditField_8 = uieditfield(app.Panel_6, 'numeric');
            app.SLMEditField_8.Editable = 'off';
            app.SLMEditField_8.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_8.Position = [382 8 54 22];

            % Create TotalFlowSettingsLabel
            app.TotalFlowSettingsLabel = uilabel(app.Panel_6);
            app.TotalFlowSettingsLabel.HorizontalAlignment = 'center';
            app.TotalFlowSettingsLabel.FontSize = 14;
            app.TotalFlowSettingsLabel.FontWeight = 'bold';
            app.TotalFlowSettingsLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.TotalFlowSettingsLabel.Position = [175 41 137 18];
            app.TotalFlowSettingsLabel.Text = 'Total Flow Settings';

            % Create InitialVelocityTotalcmsSpinnerLabel
            app.InitialVelocityTotalcmsSpinnerLabel = uilabel(app.Panel_6);
            app.InitialVelocityTotalcmsSpinnerLabel.HorizontalAlignment = 'right';
            app.InitialVelocityTotalcmsSpinnerLabel.VerticalAlignment = 'top';
            app.InitialVelocityTotalcmsSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.InitialVelocityTotalcmsSpinnerLabel.Position = [50 12 146 15];
            app.InitialVelocityTotalcmsSpinnerLabel.Text = 'Initial Velocity-Total (cm/s)';

            % Create InitialVelocityTotalcmsSpinner
            app.InitialVelocityTotalcmsSpinner = uispinner(app.Panel_6);
            app.InitialVelocityTotalcmsSpinner.ValueChangedFcn = createCallbackFcn(app, @InitialVelocityTotalcmsSpinnerValueChanged, true);
            app.InitialVelocityTotalcmsSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.InitialVelocityTotalcmsSpinner.BackgroundColor = [0 1 1];
            app.InitialVelocityTotalcmsSpinner.Position = [199 8 60 22];
            app.InitialVelocityTotalcmsSpinner.Value = 15;

            % Create Panel_7
            app.Panel_7 = uipanel(app.SetupPanel);
            app.Panel_7.Position = [450 135 487 70];

            % Create SLMsEditField_7Label
            app.SLMsEditField_7Label = uilabel(app.Panel_7);
            app.SLMsEditField_7Label.HorizontalAlignment = 'right';
            app.SLMsEditField_7Label.VerticalAlignment = 'top';
            app.SLMsEditField_7Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_7Label.Position = [342 44 37 15];
            app.SLMsEditField_7Label.Text = 'SLM/s';

            % Create SLMsEditField_7
            app.SLMsEditField_7 = uieditfield(app.Panel_7, 'numeric');
            app.SLMsEditField_7.Editable = 'off';
            app.SLMsEditField_7.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_7.Position = [382 40 54 22];

            % Create SLMEditField_9Label
            app.SLMEditField_9Label = uilabel(app.Panel_7);
            app.SLMEditField_9Label.HorizontalAlignment = 'right';
            app.SLMEditField_9Label.VerticalAlignment = 'top';
            app.SLMEditField_9Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_9Label.Position = [351 12 28 15];
            app.SLMEditField_9Label.Text = 'SLM';

            % Create SLMEditField_9
            app.SLMEditField_9 = uieditfield(app.Panel_7, 'numeric');
            app.SLMEditField_9.Editable = 'off';
            app.SLMEditField_9.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_9.Position = [382 8 54 22];

            % Create RampDownRate1TotalcmssSpinnerLabel
            app.RampDownRate1TotalcmssSpinnerLabel = uilabel(app.Panel_7);
            app.RampDownRate1TotalcmssSpinnerLabel.HorizontalAlignment = 'right';
            app.RampDownRate1TotalcmssSpinnerLabel.VerticalAlignment = 'top';
            app.RampDownRate1TotalcmssSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate1TotalcmssSpinnerLabel.Position = [9 44 187 15];
            app.RampDownRate1TotalcmssSpinnerLabel.Text = 'Ramp Down Rate 1-Total (cm/s/s)';

            % Create RampDownRate1TotalcmssSpinner
            app.RampDownRate1TotalcmssSpinner = uispinner(app.Panel_7);
            app.RampDownRate1TotalcmssSpinner.ValueChangedFcn = createCallbackFcn(app, @RampDownRate1TotalcmssSpinnerValueChanged, true);
            app.RampDownRate1TotalcmssSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate1TotalcmssSpinner.BackgroundColor = [0 1 1];
            app.RampDownRate1TotalcmssSpinner.Position = [199 40 60 22];

            % Create PlateauVelocity1TotalcmsSpinnerLabel
            app.PlateauVelocity1TotalcmsSpinnerLabel = uilabel(app.Panel_7);
            app.PlateauVelocity1TotalcmsSpinnerLabel.HorizontalAlignment = 'right';
            app.PlateauVelocity1TotalcmsSpinnerLabel.VerticalAlignment = 'top';
            app.PlateauVelocity1TotalcmsSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity1TotalcmsSpinnerLabel.Position = [27 16 169 15];
            app.PlateauVelocity1TotalcmsSpinnerLabel.Text = 'Plateau Velocity 1-Total (cm/s)';

            % Create PlateauVelocity1TotalcmsSpinner
            app.PlateauVelocity1TotalcmsSpinner = uispinner(app.Panel_7);
            app.PlateauVelocity1TotalcmsSpinner.ValueChangedFcn = createCallbackFcn(app, @PlateauVelocity1TotalcmsSpinnerValueChanged, true);
            app.PlateauVelocity1TotalcmsSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity1TotalcmsSpinner.BackgroundColor = [0 1 1];
            app.PlateauVelocity1TotalcmsSpinner.Position = [199 12 60 22];

            % Create Panel_10
            app.Panel_10 = uipanel(app.SetupPanel);
            app.Panel_10.Position = [937 204 450 70];

            % Create SourceBGasDropDownLabel
            app.SourceBGasDropDownLabel = uilabel(app.Panel_10);
            app.SourceBGasDropDownLabel.HorizontalAlignment = 'right';
            app.SourceBGasDropDownLabel.VerticalAlignment = 'top';
            app.SourceBGasDropDownLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceBGasDropDownLabel.Position = [86 42 80 15];
            app.SourceBGasDropDownLabel.Text = 'Source B Gas';

            % Create SourceBGasDropDown
            app.SourceBGasDropDown = uidropdown(app.Panel_10);
            app.SourceBGasDropDown.Items = {'O2', 'N2', 'Air', ''};
            app.SourceBGasDropDown.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceBGasDropDown.BackgroundColor = [0.96078431372549 0.96078431372549 0.96078431372549];
            app.SourceBGasDropDown.Position = [175 38 60 22];
            app.SourceBGasDropDown.Value = 'O2';

            % Create SourceDGasDropDownLabel
            app.SourceDGasDropDownLabel = uilabel(app.Panel_10);
            app.SourceDGasDropDownLabel.HorizontalAlignment = 'right';
            app.SourceDGasDropDownLabel.VerticalAlignment = 'top';
            app.SourceDGasDropDownLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceDGasDropDownLabel.Position = [268 42 81 15];
            app.SourceDGasDropDownLabel.Text = 'Source D Gas';

            % Create SourceDGasDropDown
            app.SourceDGasDropDown = uidropdown(app.Panel_10);
            app.SourceDGasDropDown.Items = {'O2', 'N2', 'Air', ''};
            app.SourceDGasDropDown.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SourceDGasDropDown.BackgroundColor = [0.96078431372549 0.96078431372549 0.96078431372549];
            app.SourceDGasDropDown.Position = [358 38 60 22];
            app.SourceDGasDropDown.Value = 'O2';

            % Create InitialVelocityBcmsEditFieldLabel
            app.InitialVelocityBcmsEditFieldLabel = uilabel(app.Panel_10);
            app.InitialVelocityBcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.InitialVelocityBcmsEditFieldLabel.VerticalAlignment = 'top';
            app.InitialVelocityBcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.InitialVelocityBcmsEditFieldLabel.Position = [50 13 126 15];
            app.InitialVelocityBcmsEditFieldLabel.Text = 'Initial Velocity- B (cm/s)';

            % Create InitialVelocityBcmsEditField
            app.InitialVelocityBcmsEditField = uieditfield(app.Panel_10, 'numeric');
            app.InitialVelocityBcmsEditField.Editable = 'off';
            app.InitialVelocityBcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.InitialVelocityBcmsEditField.Position = [181 9 54 22];

            % Create SLMEditField_12Label
            app.SLMEditField_12Label = uilabel(app.Panel_10);
            app.SLMEditField_12Label.HorizontalAlignment = 'right';
            app.SLMEditField_12Label.VerticalAlignment = 'top';
            app.SLMEditField_12Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_12Label.Position = [333 13 26 15];
            app.SLMEditField_12Label.Text = 'SLM';

            % Create SLMEditField_12
            app.SLMEditField_12 = uieditfield(app.Panel_10, 'numeric');
            app.SLMEditField_12.Editable = 'off';
            app.SLMEditField_12.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_12.Position = [364 9 54 22];

            % Create Panel_11
            app.Panel_11 = uipanel(app.SetupPanel);
            app.Panel_11.Position = [937 135 450 70];

            % Create PlateauVelocity1BcmsEditFieldLabel
            app.PlateauVelocity1BcmsEditFieldLabel = uilabel(app.Panel_11);
            app.PlateauVelocity1BcmsEditFieldLabel.HorizontalAlignment = 'right';
            app.PlateauVelocity1BcmsEditFieldLabel.VerticalAlignment = 'top';
            app.PlateauVelocity1BcmsEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity1BcmsEditFieldLabel.Position = [30 12 146 15];
            app.PlateauVelocity1BcmsEditFieldLabel.Text = 'Plateau Velocity 1-B (cm/s)';

            % Create PlateauVelocity1BcmsEditField
            app.PlateauVelocity1BcmsEditField = uieditfield(app.Panel_11, 'numeric');
            app.PlateauVelocity1BcmsEditField.Editable = 'off';
            app.PlateauVelocity1BcmsEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity1BcmsEditField.Position = [181 8 54 22];

            % Create RampDownRate1BcmssEditFieldLabel
            app.RampDownRate1BcmssEditFieldLabel = uilabel(app.Panel_11);
            app.RampDownRate1BcmssEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDownRate1BcmssEditFieldLabel.VerticalAlignment = 'top';
            app.RampDownRate1BcmssEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate1BcmssEditFieldLabel.Position = [12 44 164 15];
            app.RampDownRate1BcmssEditFieldLabel.Text = 'Ramp Down Rate 1-B (cm/s/s)';

            % Create RampDownRate1BcmssEditField
            app.RampDownRate1BcmssEditField = uieditfield(app.Panel_11, 'numeric');
            app.RampDownRate1BcmssEditField.Editable = 'off';
            app.RampDownRate1BcmssEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate1BcmssEditField.Position = [181 40 54 22];

            % Create SLMsEditField_10Label
            app.SLMsEditField_10Label = uilabel(app.Panel_11);
            app.SLMsEditField_10Label.HorizontalAlignment = 'right';
            app.SLMsEditField_10Label.VerticalAlignment = 'top';
            app.SLMsEditField_10Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_10Label.Position = [324 44 35 15];
            app.SLMsEditField_10Label.Text = 'SLM/s';

            % Create SLMsEditField_10
            app.SLMsEditField_10 = uieditfield(app.Panel_11, 'numeric');
            app.SLMsEditField_10.Editable = 'off';
            app.SLMsEditField_10.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_10.Position = [364 40 54 22];

            % Create SLMEditField_13Label
            app.SLMEditField_13Label = uilabel(app.Panel_11);
            app.SLMEditField_13Label.HorizontalAlignment = 'right';
            app.SLMEditField_13Label.VerticalAlignment = 'top';
            app.SLMEditField_13Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_13Label.Position = [333 12 26 15];
            app.SLMEditField_13Label.Text = 'SLM';

            % Create SLMEditField_13
            app.SLMEditField_13 = uieditfield(app.Panel_11, 'numeric');
            app.SLMEditField_13.Editable = 'off';
            app.SLMEditField_13.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_13.Position = [364 8 54 22];

            % Create Panel_14
            app.Panel_14 = uipanel(app.SetupPanel);
            app.Panel_14.Position = [450 66 487 70];

            % Create SLMsEditField_13Label
            app.SLMsEditField_13Label = uilabel(app.Panel_14);
            app.SLMsEditField_13Label.HorizontalAlignment = 'right';
            app.SLMsEditField_13Label.VerticalAlignment = 'top';
            app.SLMsEditField_13Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_13Label.Position = [342 45 37 15];
            app.SLMsEditField_13Label.Text = 'SLM/s';

            % Create SLMsEditField_13
            app.SLMsEditField_13 = uieditfield(app.Panel_14, 'numeric');
            app.SLMsEditField_13.Editable = 'off';
            app.SLMsEditField_13.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_13.Position = [382 41 54 22];

            % Create SLMEditField_16Label
            app.SLMEditField_16Label = uilabel(app.Panel_14);
            app.SLMEditField_16Label.HorizontalAlignment = 'right';
            app.SLMEditField_16Label.VerticalAlignment = 'top';
            app.SLMEditField_16Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_16Label.Position = [351 13 28 15];
            app.SLMEditField_16Label.Text = 'SLM';

            % Create SLMEditField_16
            app.SLMEditField_16 = uieditfield(app.Panel_14, 'numeric');
            app.SLMEditField_16.Editable = 'off';
            app.SLMEditField_16.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_16.Position = [382 9 54 22];

            % Create RampDownRate2TotalcmssSpinnerLabel
            app.RampDownRate2TotalcmssSpinnerLabel = uilabel(app.Panel_14);
            app.RampDownRate2TotalcmssSpinnerLabel.HorizontalAlignment = 'right';
            app.RampDownRate2TotalcmssSpinnerLabel.VerticalAlignment = 'top';
            app.RampDownRate2TotalcmssSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate2TotalcmssSpinnerLabel.Position = [9 44 187 15];
            app.RampDownRate2TotalcmssSpinnerLabel.Text = 'Ramp Down Rate 2-Total (cm/s/s)';

            % Create RampDownRate2TotalcmssSpinner
            app.RampDownRate2TotalcmssSpinner = uispinner(app.Panel_14);
            app.RampDownRate2TotalcmssSpinner.ValueChangedFcn = createCallbackFcn(app, @RampDownRate2TotalcmssSpinnerValueChanged, true);
            app.RampDownRate2TotalcmssSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDownRate2TotalcmssSpinner.BackgroundColor = [0 1 1];
            app.RampDownRate2TotalcmssSpinner.Position = [199 40 60 22];

            % Create PlateauVelocity2TotalcmsSpinnerLabel
            app.PlateauVelocity2TotalcmsSpinnerLabel = uilabel(app.Panel_14);
            app.PlateauVelocity2TotalcmsSpinnerLabel.HorizontalAlignment = 'right';
            app.PlateauVelocity2TotalcmsSpinnerLabel.VerticalAlignment = 'top';
            app.PlateauVelocity2TotalcmsSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity2TotalcmsSpinnerLabel.Position = [27 16 169 15];
            app.PlateauVelocity2TotalcmsSpinnerLabel.Text = 'Plateau Velocity 2-Total (cm/s)';

            % Create PlateauVelocity2TotalcmsSpinner
            app.PlateauVelocity2TotalcmsSpinner = uispinner(app.Panel_14);
            app.PlateauVelocity2TotalcmsSpinner.ValueChangedFcn = createCallbackFcn(app, @PlateauVelocity2TotalcmsSpinnerValueChanged, true);
            app.PlateauVelocity2TotalcmsSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PlateauVelocity2TotalcmsSpinner.BackgroundColor = [0 1 1];
            app.PlateauVelocity2TotalcmsSpinner.Position = [199 12 60 22];

            % Create Panel_15
            app.Panel_15 = uipanel(app.SetupPanel);
            app.Panel_15.Position = [450 0 487 68];

            % Create SLMsEditField_14Label
            app.SLMsEditField_14Label = uilabel(app.Panel_15);
            app.SLMsEditField_14Label.HorizontalAlignment = 'right';
            app.SLMsEditField_14Label.VerticalAlignment = 'top';
            app.SLMsEditField_14Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_14Label.Position = [342 42 37 15];
            app.SLMsEditField_14Label.Text = 'SLM/s';

            % Create SLMsEditField_14
            app.SLMsEditField_14 = uieditfield(app.Panel_15, 'numeric');
            app.SLMsEditField_14.Editable = 'off';
            app.SLMsEditField_14.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_14.Position = [382 38 54 22];

            % Create SLMEditField_17Label
            app.SLMEditField_17Label = uilabel(app.Panel_15);
            app.SLMEditField_17Label.HorizontalAlignment = 'right';
            app.SLMEditField_17Label.VerticalAlignment = 'top';
            app.SLMEditField_17Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_17Label.Position = [351 10 28 15];
            app.SLMEditField_17Label.Text = 'SLM';

            % Create SLMEditField_17
            app.SLMEditField_17 = uieditfield(app.Panel_15, 'numeric');
            app.SLMEditField_17.Editable = 'off';
            app.SLMEditField_17.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_17.Position = [382 6 54 22];

            % Create RampUpRate1TotalcmssSpinnerLabel
            app.RampUpRate1TotalcmssSpinnerLabel = uilabel(app.Panel_15);
            app.RampUpRate1TotalcmssSpinnerLabel.HorizontalAlignment = 'right';
            app.RampUpRate1TotalcmssSpinnerLabel.VerticalAlignment = 'top';
            app.RampUpRate1TotalcmssSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUpRate1TotalcmssSpinnerLabel.Position = [25 42 171 15];
            app.RampUpRate1TotalcmssSpinnerLabel.Text = 'Ramp Up Rate 1-Total (cm/s/s)';

            % Create RampUpRate1TotalcmssSpinner
            app.RampUpRate1TotalcmssSpinner = uispinner(app.Panel_15);
            app.RampUpRate1TotalcmssSpinner.ValueChangedFcn = createCallbackFcn(app, @RampUpRate1TotalcmssSpinnerValueChanged, true);
            app.RampUpRate1TotalcmssSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUpRate1TotalcmssSpinner.BackgroundColor = [0 1 1];
            app.RampUpRate1TotalcmssSpinner.Position = [199 38 60 22];

            % Create FinalVelocity1TotalcmsSpinnerLabel
            app.FinalVelocity1TotalcmsSpinnerLabel = uilabel(app.Panel_15);
            app.FinalVelocity1TotalcmsSpinnerLabel.HorizontalAlignment = 'right';
            app.FinalVelocity1TotalcmsSpinnerLabel.VerticalAlignment = 'top';
            app.FinalVelocity1TotalcmsSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FinalVelocity1TotalcmsSpinnerLabel.Position = [42 14 154 15];
            app.FinalVelocity1TotalcmsSpinnerLabel.Text = 'Final Velocity 1-Total (cm/s)';

            % Create FinalVelocity1TotalcmsSpinner
            app.FinalVelocity1TotalcmsSpinner = uispinner(app.Panel_15);
            app.FinalVelocity1TotalcmsSpinner.ValueChangedFcn = createCallbackFcn(app, @FinalVelocity1TotalcmsSpinnerValueChanged, true);
            app.FinalVelocity1TotalcmsSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FinalVelocity1TotalcmsSpinner.BackgroundColor = [0 1 1];
            app.FinalVelocity1TotalcmsSpinner.Position = [199 10 60 22];

            % Create psiaEditFieldLabel
            app.psiaEditFieldLabel = uilabel(app.SetupPanel);
            app.psiaEditFieldLabel.HorizontalAlignment = 'right';
            app.psiaEditFieldLabel.VerticalAlignment = 'top';
            app.psiaEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiaEditFieldLabel.Position = [583 345 28 15];
            app.psiaEditFieldLabel.Text = 'psia';

            % Create psiaEditField
            app.psiaEditField = uieditfield(app.SetupPanel, 'numeric');
            app.psiaEditField.Editable = 'off';
            app.psiaEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiaEditField.Position = [523 341 64 22];
            app.psiaEditField.Value = 14.7;

            % Create DesiredOxygenCompositionOxygeninMixtureSpinnerLabel
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel = uilabel(app.SetupPanel);
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel.HorizontalAlignment = 'right';
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel.VerticalAlignment = 'top';
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel.FontWeight = 'bold';
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel.Position = [191 374 304 15];
            app.DesiredOxygenCompositionOxygeninMixtureSpinnerLabel.Text = 'Desired Oxygen Composition (% Oxygen in Mixture)';

            % Create DesiredOxygenCompositionOxygeninMixtureSpinner
            app.DesiredOxygenCompositionOxygeninMixtureSpinner = uispinner(app.SetupPanel);
            app.DesiredOxygenCompositionOxygeninMixtureSpinner.Limits = [0 100];
            app.DesiredOxygenCompositionOxygeninMixtureSpinner.ValueChangedFcn = createCallbackFcn(app, @DesiredOxygenCompositionOxygeninMixtureSpinnerValueChanged, true);
            app.DesiredOxygenCompositionOxygeninMixtureSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.DesiredOxygenCompositionOxygeninMixtureSpinner.BackgroundColor = [0 1 1];
            app.DesiredOxygenCompositionOxygeninMixtureSpinner.Position = [510 370 100 22];
            app.DesiredOxygenCompositionOxygeninMixtureSpinner.Value = 21;

            % Create ChannelTemperatureCSpinnerLabel
            app.ChannelTemperatureCSpinnerLabel = uilabel(app.SetupPanel);
            app.ChannelTemperatureCSpinnerLabel.HorizontalAlignment = 'right';
            app.ChannelTemperatureCSpinnerLabel.VerticalAlignment = 'top';
            app.ChannelTemperatureCSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelTemperatureCSpinnerLabel.Position = [185 316 144 15];
            app.ChannelTemperatureCSpinnerLabel.Text = 'Channel Temperature (C)';

            % Create ChannelTemperatureCSpinner
            app.ChannelTemperatureCSpinner = uispinner(app.SetupPanel);
            app.ChannelTemperatureCSpinner.ValueChangedFcn = createCallbackFcn(app, @ChannelTemperatureCSpinnerValueChanged, true);
            app.ChannelTemperatureCSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelTemperatureCSpinner.BackgroundColor = [0 1 1];
            app.ChannelTemperatureCSpinner.Position = [342 312 68 22];
            app.ChannelTemperatureCSpinner.Value = 22;

            % Create cmEditFieldLabel
            app.cmEditFieldLabel = uilabel(app.SetupPanel);
            app.cmEditFieldLabel.HorizontalAlignment = 'right';
            app.cmEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.cmEditFieldLabel.Position = [487 284 21 22];
            app.cmEditFieldLabel.Text = 'cm';

            % Create cmEditField
            app.cmEditField = uieditfield(app.SetupPanel, 'numeric');
            app.cmEditField.Editable = 'off';
            app.cmEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.cmEditField.Position = [421 284 64 22];

            % Create psiaSpinnerLabel
            app.psiaSpinnerLabel = uilabel(app.SetupPanel);
            app.psiaSpinnerLabel.HorizontalAlignment = 'right';
            app.psiaSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiaSpinnerLabel.Position = [105 339 27 22];
            app.psiaSpinnerLabel.Text = 'psia';

            % Create psiaSpinner
            app.psiaSpinner = uispinner(app.SetupPanel);
            app.psiaSpinner.ValueChangedFcn = createCallbackFcn(app, @psiaSpinnerValueChanged, true);
            app.psiaSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiaSpinner.BackgroundColor = [0.0588 1 1];
            app.psiaSpinner.Position = [21 339 77 22];
            app.psiaSpinner.Value = 14.696;

            % Create kpaEditFieldLabel
            app.kpaEditFieldLabel = uilabel(app.SetupPanel);
            app.kpaEditFieldLabel.HorizontalAlignment = 'right';
            app.kpaEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.kpaEditFieldLabel.Position = [106 307 25 22];
            app.kpaEditFieldLabel.Text = 'kpa';

            % Create kpaEditField
            app.kpaEditField = uieditfield(app.SetupPanel, 'numeric');
            app.kpaEditField.ValueDisplayFormat = '%.2f';
            app.kpaEditField.Editable = 'off';
            app.kpaEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.kpaEditField.Position = [21 307 77 22];

            % Create MFCInletPressurepsiaPanel
            app.MFCInletPressurepsiaPanel = uipanel(app.SetupPanel);
            app.MFCInletPressurepsiaPanel.ForegroundColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.MFCInletPressurepsiaPanel.TitlePosition = 'centertop';
            app.MFCInletPressurepsiaPanel.Title = 'MFC Inlet Pressure (psia)';
            app.MFCInletPressurepsiaPanel.BackgroundColor = [0.902 0.902 0.902];
            app.MFCInletPressurepsiaPanel.FontWeight = 'bold';
            app.MFCInletPressurepsiaPanel.Position = [644 284 431 106];

            % Create AEditFieldLabel
            app.AEditFieldLabel = uilabel(app.MFCInletPressurepsiaPanel);
            app.AEditFieldLabel.HorizontalAlignment = 'center';
            app.AEditFieldLabel.VerticalAlignment = 'bottom';
            app.AEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.AEditFieldLabel.Position = [22 54 16 22];
            app.AEditFieldLabel.Text = 'A';

            % Create AEditField
            app.AEditField = uieditfield(app.MFCInletPressurepsiaPanel, 'numeric');
            app.AEditField.Editable = 'off';
            app.AEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.AEditField.Position = [43 51 75 22];

            % Create DEditFieldLabel
            app.DEditFieldLabel = uilabel(app.MFCInletPressurepsiaPanel);
            app.DEditFieldLabel.HorizontalAlignment = 'center';
            app.DEditFieldLabel.VerticalAlignment = 'bottom';
            app.DEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.DEditFieldLabel.Position = [18 18 25 22];
            app.DEditFieldLabel.Text = 'D';

            % Create DEditField
            app.DEditField = uieditfield(app.MFCInletPressurepsiaPanel, 'numeric');
            app.DEditField.Editable = 'off';
            app.DEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.DEditField.Position = [43 15 75 22];

            % Create EEditFieldLabel
            app.EEditFieldLabel = uilabel(app.MFCInletPressurepsiaPanel);
            app.EEditFieldLabel.HorizontalAlignment = 'center';
            app.EEditFieldLabel.VerticalAlignment = 'bottom';
            app.EEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EEditFieldLabel.Position = [164 17 25 22];
            app.EEditFieldLabel.Text = 'E';

            % Create EEditField
            app.EEditField = uieditfield(app.MFCInletPressurepsiaPanel, 'numeric');
            app.EEditField.Editable = 'off';
            app.EEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EEditField.Position = [189 15 75 22];

            % Create BEditFieldLabel
            app.BEditFieldLabel = uilabel(app.MFCInletPressurepsiaPanel);
            app.BEditFieldLabel.HorizontalAlignment = 'center';
            app.BEditFieldLabel.VerticalAlignment = 'bottom';
            app.BEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.BEditFieldLabel.Position = [164 53 25 22];
            app.BEditFieldLabel.Text = 'B';

            % Create BEditField
            app.BEditField = uieditfield(app.MFCInletPressurepsiaPanel, 'numeric');
            app.BEditField.Editable = 'off';
            app.BEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.BEditField.Position = [189 51 75 22];

            % Create CEditFieldLabel
            app.CEditFieldLabel = uilabel(app.MFCInletPressurepsiaPanel);
            app.CEditFieldLabel.HorizontalAlignment = 'center';
            app.CEditFieldLabel.VerticalAlignment = 'bottom';
            app.CEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.CEditFieldLabel.Position = [308 53 25 22];
            app.CEditFieldLabel.Text = 'C';

            % Create CEditField
            app.CEditField = uieditfield(app.MFCInletPressurepsiaPanel, 'numeric');
            app.CEditField.Editable = 'off';
            app.CEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.CEditField.Position = [333 51 75 22];

            % Create psiatokpaconverterLabel
            app.psiatokpaconverterLabel = uilabel(app.SetupPanel);
            app.psiatokpaconverterLabel.FontWeight = 'bold';
            app.psiatokpaconverterLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiatokpaconverterLabel.Position = [22 371 126 22];
            app.psiatokpaconverterLabel.Text = 'psia to kpa converter';

            % Create ChannelPressurePanel
            app.ChannelPressurePanel = uipanel(app.SetupPanel);
            app.ChannelPressurePanel.ForegroundColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelPressurePanel.TitlePosition = 'centertop';
            app.ChannelPressurePanel.Title = 'Channel Pressure';
            app.ChannelPressurePanel.BackgroundColor = [0.902 0.902 0.902];
            app.ChannelPressurePanel.FontWeight = 'bold';
            app.ChannelPressurePanel.Position = [1089 284 284 106];

            % Create SensorPressurepsiaEditFieldLabel
            app.SensorPressurepsiaEditFieldLabel = uilabel(app.ChannelPressurePanel);
            app.SensorPressurepsiaEditFieldLabel.HorizontalAlignment = 'right';
            app.SensorPressurepsiaEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SensorPressurepsiaEditFieldLabel.Position = [23 49 128 22];
            app.SensorPressurepsiaEditFieldLabel.Text = 'Sensor Pressure (psia)';

            % Create SensorPressurepsiaEditField
            app.SensorPressurepsiaEditField = uieditfield(app.ChannelPressurePanel, 'numeric');
            app.SensorPressurepsiaEditField.Editable = 'off';
            app.SensorPressurepsiaEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SensorPressurepsiaEditField.Position = [166 49 100 22];

            % Create ConnectArduinoButton
            app.ConnectArduinoButton = uibutton(app.ChannelPressurePanel, 'push');
            app.ConnectArduinoButton.ButtonPushedFcn = createCallbackFcn(app, @ConnectArduinoButtonPushed, true);
            app.ConnectArduinoButton.BackgroundColor = [0.8 0.8 0.8];
            app.ConnectArduinoButton.FontWeight = 'bold';
            app.ConnectArduinoButton.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ConnectArduinoButton.Position = [80 11 125 22];
            app.ConnectArduinoButton.Text = 'Connect Arduino';

            % Create ReferencesPanel
            app.ReferencesPanel = uipanel(app.NarrowChannel);
            app.ReferencesPanel.BorderWidth = 2;
            app.ReferencesPanel.TitlePosition = 'centertop';
            app.ReferencesPanel.Title = 'References';
            app.ReferencesPanel.FontWeight = 'bold';
            app.ReferencesPanel.Position = [23 338 737 152];

            % Create ReferencePressurekPaSpinnerLabel
            app.ReferencePressurekPaSpinnerLabel = uilabel(app.ReferencesPanel);
            app.ReferencePressurekPaSpinnerLabel.HorizontalAlignment = 'right';
            app.ReferencePressurekPaSpinnerLabel.VerticalAlignment = 'top';
            app.ReferencePressurekPaSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ReferencePressurekPaSpinnerLabel.Position = [27 101 146 15];
            app.ReferencePressurekPaSpinnerLabel.Text = 'Reference Pressure (kPa)';

            % Create ReferencePressurekPaSpinner
            app.ReferencePressurekPaSpinner = uispinner(app.ReferencesPanel);
            app.ReferencePressurekPaSpinner.ValueChangedFcn = createCallbackFcn(app, @ReferencePressurekPaSpinnerValueChanged, true);
            app.ReferencePressurekPaSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ReferencePressurekPaSpinner.BackgroundColor = [0 1 1];
            app.ReferencePressurekPaSpinner.Position = [186 97 70 22];
            app.ReferencePressurekPaSpinner.Value = 101.32;

            % Create ReferenceTemperatureCSpinnerLabel
            app.ReferenceTemperatureCSpinnerLabel = uilabel(app.ReferencesPanel);
            app.ReferenceTemperatureCSpinnerLabel.HorizontalAlignment = 'right';
            app.ReferenceTemperatureCSpinnerLabel.VerticalAlignment = 'top';
            app.ReferenceTemperatureCSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ReferenceTemperatureCSpinnerLabel.Position = [21 70 154 15];
            app.ReferenceTemperatureCSpinnerLabel.Text = 'Reference Temperature (C)';

            % Create ReferenceTemperatureCSpinner
            app.ReferenceTemperatureCSpinner = uispinner(app.ReferencesPanel);
            app.ReferenceTemperatureCSpinner.ValueChangedFcn = createCallbackFcn(app, @ReferenceTemperatureCSpinnerValueChanged, true);
            app.ReferenceTemperatureCSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ReferenceTemperatureCSpinner.BackgroundColor = [0 1 1];
            app.ReferenceTemperatureCSpinner.Position = [186 66 70 22];
            app.ReferenceTemperatureCSpinner.Value = 25;

            % Create ChannelWidthcmSpinnerLabel
            app.ChannelWidthcmSpinnerLabel = uilabel(app.ReferencesPanel);
            app.ChannelWidthcmSpinnerLabel.HorizontalAlignment = 'right';
            app.ChannelWidthcmSpinnerLabel.VerticalAlignment = 'top';
            app.ChannelWidthcmSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelWidthcmSpinnerLabel.Position = [64 34 111 22];
            app.ChannelWidthcmSpinnerLabel.Text = 'Channel Width (cm)';

            % Create ChannelWidthcmSpinner
            app.ChannelWidthcmSpinner = uispinner(app.ReferencesPanel);
            app.ChannelWidthcmSpinner.ValueChangedFcn = createCallbackFcn(app, @ChannelWidthcmSpinnerValueChanged, true);
            app.ChannelWidthcmSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ChannelWidthcmSpinner.BackgroundColor = [0 1 1];
            app.ChannelWidthcmSpinner.Position = [186 37 70 22];
            app.ChannelWidthcmSpinner.Value = 8.0645;

            % Create DensityCorrectionFactorEditFieldLabel
            app.DensityCorrectionFactorEditFieldLabel = uilabel(app.ReferencesPanel);
            app.DensityCorrectionFactorEditFieldLabel.HorizontalAlignment = 'right';
            app.DensityCorrectionFactorEditFieldLabel.VerticalAlignment = 'top';
            app.DensityCorrectionFactorEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.DensityCorrectionFactorEditFieldLabel.Position = [32 11 143 15];
            app.DensityCorrectionFactorEditFieldLabel.Text = 'Density Correction Factor';

            % Create DensityCorrectionFactorEditField
            app.DensityCorrectionFactorEditField = uieditfield(app.ReferencesPanel, 'numeric');
            app.DensityCorrectionFactorEditField.Editable = 'off';
            app.DensityCorrectionFactorEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.DensityCorrectionFactorEditField.Position = [186 7 70 22];
            app.DensityCorrectionFactorEditField.Value = 1;

            % Create atmEditField_2Label
            app.atmEditField_2Label = uilabel(app.ReferencesPanel);
            app.atmEditField_2Label.HorizontalAlignment = 'right';
            app.atmEditField_2Label.VerticalAlignment = 'top';
            app.atmEditField_2Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.atmEditField_2Label.Position = [423 100 20 15];
            app.atmEditField_2Label.Text = 'atm';

            % Create atmEditField_2
            app.atmEditField_2 = uieditfield(app.ReferencesPanel, 'numeric');
            app.atmEditField_2.Editable = 'off';
            app.atmEditField_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.atmEditField_2.Position = [320 96 100 22];
            app.atmEditField_2.Value = 1;

            % Create FEditField_2Label
            app.FEditField_2Label = uilabel(app.ReferencesPanel);
            app.FEditField_2Label.HorizontalAlignment = 'right';
            app.FEditField_2Label.VerticalAlignment = 'top';
            app.FEditField_2Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FEditField_2Label.Position = [419 70 15 15];
            app.FEditField_2Label.Text = 'F';

            % Create FEditField_2
            app.FEditField_2 = uieditfield(app.ReferencesPanel, 'numeric');
            app.FEditField_2.Editable = 'off';
            app.FEditField_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FEditField_2.Position = [320 66 100 22];
            app.FEditField_2.Value = 77;

            % Create psiaEditField_2Label
            app.psiaEditField_2Label = uilabel(app.ReferencesPanel);
            app.psiaEditField_2Label.HorizontalAlignment = 'right';
            app.psiaEditField_2Label.VerticalAlignment = 'top';
            app.psiaEditField_2Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiaEditField_2Label.Position = [630 100 28 15];
            app.psiaEditField_2Label.Text = 'psia';

            % Create psiaEditField_2
            app.psiaEditField_2 = uieditfield(app.ReferencesPanel, 'numeric');
            app.psiaEditField_2.Editable = 'off';
            app.psiaEditField_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.psiaEditField_2.Position = [528 96 100 22];
            app.psiaEditField_2.Value = 14.7;

            % Create KEditField_2Label
            app.KEditField_2Label = uilabel(app.ReferencesPanel);
            app.KEditField_2Label.HorizontalAlignment = 'right';
            app.KEditField_2Label.VerticalAlignment = 'top';
            app.KEditField_2Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.KEditField_2Label.Position = [631 70 15 15];
            app.KEditField_2Label.Text = 'K';

            % Create KEditField_2
            app.KEditField_2 = uieditfield(app.ReferencesPanel, 'numeric');
            app.KEditField_2.Editable = 'off';
            app.KEditField_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.KEditField_2.Position = [528 66 100 22];
            app.KEditField_2.Value = 298.1;

            % Create CrossSectionalAreacm2EditFieldLabel
            app.CrossSectionalAreacm2EditFieldLabel = uilabel(app.ReferencesPanel);
            app.CrossSectionalAreacm2EditFieldLabel.HorizontalAlignment = 'right';
            app.CrossSectionalAreacm2EditFieldLabel.VerticalAlignment = 'top';
            app.CrossSectionalAreacm2EditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.CrossSectionalAreacm2EditFieldLabel.Position = [425 41 161 15];
            app.CrossSectionalAreacm2EditFieldLabel.Text = 'Cross-Sectional Area (cm^2)';

            % Create CrossSectionalAreacm2EditField
            app.CrossSectionalAreacm2EditField = uieditfield(app.ReferencesPanel, 'numeric');
            app.CrossSectionalAreacm2EditField.Editable = 'off';
            app.CrossSectionalAreacm2EditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.CrossSectionalAreacm2EditField.Position = [320 37 100 22];
            app.CrossSectionalAreacm2EditField.Value = 4.0325;

            % Create SettingsPanel
            app.SettingsPanel = uipanel(app.NarrowChannel);
            app.SettingsPanel.BorderWidth = 2;
            app.SettingsPanel.TitlePosition = 'centertop';
            app.SettingsPanel.Title = 'Settings';
            app.SettingsPanel.FontWeight = 'bold';
            app.SettingsPanel.Position = [23 22 272 301];

            % Create SLMLabel
            app.SLMLabel = uilabel(app.SettingsPanel);
            app.SLMLabel.VerticalAlignment = 'top';
            app.SLMLabel.FontWeight = 'bold';
            app.SLMLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMLabel.Position = [190 241 30 15];
            app.SLMLabel.Text = 'SLM';

            % Create EditField
            app.EditField = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField.ValueDisplayFormat = '%.0f';
            app.EditField.Editable = 'off';
            app.EditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField.Position = [17 209 100 22];

            % Create EditField_2
            app.EditField_2 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_2.ValueDisplayFormat = '%.0f';
            app.EditField_2.Editable = 'off';
            app.EditField_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_2.Position = [17 161 100 22];

            % Create EditField_3
            app.EditField_3 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_3.Editable = 'off';
            app.EditField_3.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_3.Position = [155 209 100 22];

            % Create EditField_4
            app.EditField_4 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_4.ValueDisplayFormat = '%.0f';
            app.EditField_4.Editable = 'off';
            app.EditField_4.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_4.Position = [17 114 100 22];

            % Create EditField_5
            app.EditField_5 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_5.Editable = 'off';
            app.EditField_5.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_5.Position = [155 161 100 22];

            % Create EditField_6
            app.EditField_6 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_6.Editable = 'off';
            app.EditField_6.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_6.Position = [155 114 100 22];

            % Create EditField_7
            app.EditField_7 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_7.ValueDisplayFormat = '%.0f';
            app.EditField_7.Editable = 'off';
            app.EditField_7.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_7.Position = [17 65 100 22];

            % Create EditField_8
            app.EditField_8 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_8.Editable = 'off';
            app.EditField_8.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_8.Position = [155 65 100 22];

            % Create EditField_9
            app.EditField_9 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_9.ValueDisplayFormat = '%.0f';
            app.EditField_9.Editable = 'off';
            app.EditField_9.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_9.Position = [17 17 100 22];

            % Create EditField_10
            app.EditField_10 = uieditfield(app.SettingsPanel, 'numeric');
            app.EditField_10.Editable = 'off';
            app.EditField_10.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_10.Position = [155 17 100 22];

            % Create Label
            app.Label = uilabel(app.SettingsPanel);
            app.Label.VerticalAlignment = 'top';
            app.Label.FontWeight = 'bold';
            app.Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.Label.Position = [27 241 79 15];
            app.Label.Text = '64000=100%';

            % Create FullScaleLabel
            app.FullScaleLabel = uilabel(app.SettingsPanel);
            app.FullScaleLabel.VerticalAlignment = 'top';
            app.FullScaleLabel.FontWeight = 'bold';
            app.FullScaleLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.FullScaleLabel.Position = [29 255 71 15];
            app.FullScaleLabel.Text = '%Full Scale';

            % Create ActualsPanel
            app.ActualsPanel = uipanel(app.NarrowChannel);
            app.ActualsPanel.BorderWidth = 2;
            app.ActualsPanel.TitlePosition = 'centertop';
            app.ActualsPanel.Title = 'Actuals';
            app.ActualsPanel.FontWeight = 'bold';
            app.ActualsPanel.Position = [494 22 266 301];

            % Create SLMLabel_2
            app.SLMLabel_2 = uilabel(app.ActualsPanel);
            app.SLMLabel_2.VerticalAlignment = 'top';
            app.SLMLabel_2.FontWeight = 'bold';
            app.SLMLabel_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMLabel_2.Position = [42 241 30 15];
            app.SLMLabel_2.Text = 'SLM';

            % Create VelocityLabel
            app.VelocityLabel = uilabel(app.ActualsPanel);
            app.VelocityLabel.VerticalAlignment = 'top';
            app.VelocityLabel.FontWeight = 'bold';
            app.VelocityLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.VelocityLabel.Position = [174 241 51 15];
            app.VelocityLabel.Text = 'Velocity';

            % Create EditField_11
            app.EditField_11 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_11.Editable = 'off';
            app.EditField_11.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_11.Position = [13 209 100 22];

            % Create EditField_12
            app.EditField_12 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_12.Editable = 'off';
            app.EditField_12.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_12.Position = [150 209 100 22];

            % Create EditField_13
            app.EditField_13 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_13.Editable = 'off';
            app.EditField_13.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_13.Position = [13 161 100 22];

            % Create EditField_14
            app.EditField_14 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_14.Editable = 'off';
            app.EditField_14.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_14.Position = [150 161 100 22];

            % Create EditField_15
            app.EditField_15 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_15.Editable = 'off';
            app.EditField_15.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_15.Position = [150 114 100 22];

            % Create EditField_16
            app.EditField_16 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_16.Editable = 'off';
            app.EditField_16.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_16.Position = [13 114 100 22];

            % Create EditField_17
            app.EditField_17 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_17.Editable = 'off';
            app.EditField_17.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_17.Position = [13 65 100 22];

            % Create EditField_18
            app.EditField_18 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_18.Editable = 'off';
            app.EditField_18.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_18.Position = [150 65 100 22];

            % Create EditField_19
            app.EditField_19 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_19.Editable = 'off';
            app.EditField_19.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_19.Position = [13 17 100 22];

            % Create EditField_20
            app.EditField_20 = uieditfield(app.ActualsPanel, 'numeric');
            app.EditField_20.Editable = 'off';
            app.EditField_20.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.EditField_20.Position = [150 17 100 22];

            % Create UnitPanel
            app.UnitPanel = uipanel(app.NarrowChannel);
            app.UnitPanel.BorderWidth = 2;
            app.UnitPanel.TitlePosition = 'centertop';
            app.UnitPanel.Title = 'Unit';
            app.UnitPanel.FontWeight = 'bold';
            app.UnitPanel.Position = [289 22 211 301];

            % Create A150Label
            app.A150Label = uilabel(app.UnitPanel);
            app.A150Label.HorizontalAlignment = 'center';
            app.A150Label.VerticalAlignment = 'top';
            app.A150Label.FontWeight = 'bold';
            app.A150Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.A150Label.Position = [32 213 51 15];
            app.A150Label.Text = 'A:(1-50)';

            % Create N2Label
            app.N2Label = uilabel(app.UnitPanel);
            app.N2Label.HorizontalAlignment = 'center';
            app.N2Label.VerticalAlignment = 'top';
            app.N2Label.FontWeight = 'bold';
            app.N2Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.N2Label.Position = [128 213 25 15];
            app.N2Label.Text = 'N2';

            % Create B150Label
            app.B150Label = uilabel(app.UnitPanel);
            app.B150Label.HorizontalAlignment = 'center';
            app.B150Label.VerticalAlignment = 'top';
            app.B150Label.FontWeight = 'bold';
            app.B150Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.B150Label.Position = [32 165 51 15];
            app.B150Label.Text = 'B:(1-50)';

            % Create O2Label
            app.O2Label = uilabel(app.UnitPanel);
            app.O2Label.HorizontalAlignment = 'center';
            app.O2Label.VerticalAlignment = 'top';
            app.O2Label.FontWeight = 'bold';
            app.O2Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.O2Label.Position = [129 165 25 15];
            app.O2Label.Text = 'O2';

            % Create C0011Label
            app.C0011Label = uilabel(app.UnitPanel);
            app.C0011Label.HorizontalAlignment = 'center';
            app.C0011Label.VerticalAlignment = 'top';
            app.C0011Label.FontWeight = 'bold';
            app.C0011Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.C0011Label.Position = [32 118 61 15];
            app.C0011Label.Text = 'C:(0.01-1)';

            % Create D0011Label
            app.D0011Label = uilabel(app.UnitPanel);
            app.D0011Label.HorizontalAlignment = 'center';
            app.D0011Label.VerticalAlignment = 'top';
            app.D0011Label.FontWeight = 'bold';
            app.D0011Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.D0011Label.Position = [32 69 61 15];
            app.D0011Label.Text = 'D:(0.01-1)';

            % Create N2Label_2
            app.N2Label_2 = uilabel(app.UnitPanel);
            app.N2Label_2.HorizontalAlignment = 'center';
            app.N2Label_2.VerticalAlignment = 'top';
            app.N2Label_2.FontWeight = 'bold';
            app.N2Label_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.N2Label_2.Position = [129 118 25 15];
            app.N2Label_2.Text = 'N2';

            % Create O2Label_2
            app.O2Label_2 = uilabel(app.UnitPanel);
            app.O2Label_2.HorizontalAlignment = 'center';
            app.O2Label_2.VerticalAlignment = 'top';
            app.O2Label_2.FontWeight = 'bold';
            app.O2Label_2.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.O2Label_2.Position = [129 69 25 15];
            app.O2Label_2.Text = 'O2';

            % Create E0055Label
            app.E0055Label = uilabel(app.UnitPanel);
            app.E0055Label.HorizontalAlignment = 'center';
            app.E0055Label.VerticalAlignment = 'top';
            app.E0055Label.FontWeight = 'bold';
            app.E0055Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.E0055Label.Position = [32 21 60 15];
            app.E0055Label.Text = 'E:(0.05-5)';

            % Create AirLabel
            app.AirLabel = uilabel(app.UnitPanel);
            app.AirLabel.HorizontalAlignment = 'center';
            app.AirLabel.VerticalAlignment = 'top';
            app.AirLabel.FontWeight = 'bold';
            app.AirLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.AirLabel.Position = [129 21 25 15];
            app.AirLabel.Text = 'Air';

            % Create TotalFlowReadingsPanel
            app.TotalFlowReadingsPanel = uipanel(app.NarrowChannel);
            app.TotalFlowReadingsPanel.ForegroundColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.TotalFlowReadingsPanel.BorderWidth = 2;
            app.TotalFlowReadingsPanel.TitlePosition = 'centertop';
            app.TotalFlowReadingsPanel.Title = 'Total Flow Readings';
            app.TotalFlowReadingsPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TotalFlowReadingsPanel.FontWeight = 'bold';
            app.TotalFlowReadingsPanel.Position = [772 23 258 263];

            % Create ActualTotalFlowEditFieldLabel
            app.ActualTotalFlowEditFieldLabel = uilabel(app.TotalFlowReadingsPanel);
            app.ActualTotalFlowEditFieldLabel.HorizontalAlignment = 'center';
            app.ActualTotalFlowEditFieldLabel.FontWeight = 'bold';
            app.ActualTotalFlowEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ActualTotalFlowEditFieldLabel.Position = [24 185 112 15];
            app.ActualTotalFlowEditFieldLabel.Text = 'Actual Total Flow';

            % Create ActualTotalFlowEditField
            app.ActualTotalFlowEditField = uieditfield(app.TotalFlowReadingsPanel, 'numeric');
            app.ActualTotalFlowEditField.Editable = 'off';
            app.ActualTotalFlowEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ActualTotalFlowEditField.Position = [138 182 97 22];

            % Create ActualTotalVelocityEditFieldLabel
            app.ActualTotalVelocityEditFieldLabel = uilabel(app.TotalFlowReadingsPanel);
            app.ActualTotalVelocityEditFieldLabel.HorizontalAlignment = 'center';
            app.ActualTotalVelocityEditFieldLabel.FontWeight = 'bold';
            app.ActualTotalVelocityEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ActualTotalVelocityEditFieldLabel.Position = [11 135 121 15];
            app.ActualTotalVelocityEditFieldLabel.Text = 'Actual Total Velocity';

            % Create ActualTotalVelocityEditField
            app.ActualTotalVelocityEditField = uieditfield(app.TotalFlowReadingsPanel, 'numeric');
            app.ActualTotalVelocityEditField.Editable = 'off';
            app.ActualTotalVelocityEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.ActualTotalVelocityEditField.Position = [139 131 97 22];

            % Create TotalFlowSetpointEditFieldLabel
            app.TotalFlowSetpointEditFieldLabel = uilabel(app.TotalFlowReadingsPanel);
            app.TotalFlowSetpointEditFieldLabel.HorizontalAlignment = 'right';
            app.TotalFlowSetpointEditFieldLabel.VerticalAlignment = 'top';
            app.TotalFlowSetpointEditFieldLabel.FontWeight = 'bold';
            app.TotalFlowSetpointEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.TotalFlowSetpointEditFieldLabel.Position = [21 83 112 15];
            app.TotalFlowSetpointEditFieldLabel.Text = 'Total Flow Setpoint';

            % Create TotalFlowSetpointEditField
            app.TotalFlowSetpointEditField = uieditfield(app.TotalFlowReadingsPanel, 'numeric');
            app.TotalFlowSetpointEditField.Editable = 'off';
            app.TotalFlowSetpointEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.TotalFlowSetpointEditField.Position = [139 79 96 22];

            % Create TotalVelSetpointEditFieldLabel
            app.TotalVelSetpointEditFieldLabel = uilabel(app.TotalFlowReadingsPanel);
            app.TotalVelSetpointEditFieldLabel.HorizontalAlignment = 'right';
            app.TotalVelSetpointEditFieldLabel.VerticalAlignment = 'top';
            app.TotalVelSetpointEditFieldLabel.FontWeight = 'bold';
            app.TotalVelSetpointEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.TotalVelSetpointEditFieldLabel.Position = [23 31 106 15];
            app.TotalVelSetpointEditFieldLabel.Text = 'Total Vel. Setpoint';

            % Create TotalVelSetpointEditField
            app.TotalVelSetpointEditField = uieditfield(app.TotalFlowReadingsPanel, 'numeric');
            app.TotalVelSetpointEditField.Editable = 'off';
            app.TotalVelSetpointEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.TotalVelSetpointEditField.Position = [140 27 96 22];

            % Create RampInformationPanel
            app.RampInformationPanel = uipanel(app.NarrowChannel);
            app.RampInformationPanel.ForegroundColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampInformationPanel.BorderWidth = 2;
            app.RampInformationPanel.TitlePosition = 'centertop';
            app.RampInformationPanel.Title = 'Ramp Information';
            app.RampInformationPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.RampInformationPanel.FontWeight = 'bold';
            app.RampInformationPanel.Position = [1047 22 365 262];

            % Create PhaseDurationsLabel
            app.PhaseDurationsLabel = uilabel(app.RampInformationPanel);
            app.PhaseDurationsLabel.VerticalAlignment = 'top';
            app.PhaseDurationsLabel.FontWeight = 'bold';
            app.PhaseDurationsLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.PhaseDurationsLabel.Position = [137 205 100 15];
            app.PhaseDurationsLabel.Text = 'Phase Durations';

            % Create RampDown1secEditFieldLabel
            app.RampDown1secEditFieldLabel = uilabel(app.RampInformationPanel);
            app.RampDown1secEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDown1secEditFieldLabel.VerticalAlignment = 'top';
            app.RampDown1secEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDown1secEditFieldLabel.Position = [10 170 113 15];
            app.RampDown1secEditFieldLabel.Text = 'Ramp Down 1 (sec)';

            % Create RampDown1secEditField
            app.RampDown1secEditField = uieditfield(app.RampInformationPanel, 'numeric');
            app.RampDown1secEditField.Editable = 'off';
            app.RampDown1secEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDown1secEditField.Position = [129 166 45 22];

            % Create RampDown2secEditFieldLabel
            app.RampDown2secEditFieldLabel = uilabel(app.RampInformationPanel);
            app.RampDown2secEditFieldLabel.HorizontalAlignment = 'right';
            app.RampDown2secEditFieldLabel.VerticalAlignment = 'top';
            app.RampDown2secEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDown2secEditFieldLabel.Position = [10 132 113 15];
            app.RampDown2secEditFieldLabel.Text = 'Ramp Down 2 (sec)';

            % Create RampDown2secEditField
            app.RampDown2secEditField = uieditfield(app.RampInformationPanel, 'numeric');
            app.RampDown2secEditField.Editable = 'off';
            app.RampDown2secEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampDown2secEditField.Position = [129 128 45 22];

            % Create RampUp1secEditFieldLabel
            app.RampUp1secEditFieldLabel = uilabel(app.RampInformationPanel);
            app.RampUp1secEditFieldLabel.HorizontalAlignment = 'right';
            app.RampUp1secEditFieldLabel.VerticalAlignment = 'top';
            app.RampUp1secEditFieldLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUp1secEditFieldLabel.Position = [197 169 97 15];
            app.RampUp1secEditFieldLabel.Text = 'Ramp Up 1 (sec)';

            % Create RampUp1secEditField
            app.RampUp1secEditField = uieditfield(app.RampInformationPanel, 'numeric');
            app.RampUp1secEditField.Editable = 'off';
            app.RampUp1secEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.RampUp1secEditField.Position = [302 165 46 22];

            % Create OxygenRampTimesecLabel
            app.OxygenRampTimesecLabel = uilabel(app.RampInformationPanel);
            app.OxygenRampTimesecLabel.HorizontalAlignment = 'right';
            app.OxygenRampTimesecLabel.VerticalAlignment = 'top';
            app.OxygenRampTimesecLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.OxygenRampTimesecLabel.Position = [184 126 112 22];
            app.OxygenRampTimesecLabel.Text = 'Oxygen Ramp (sec)';

            % Create OxygenRampsecEditField
            app.OxygenRampsecEditField = uieditfield(app.RampInformationPanel, 'numeric');
            app.OxygenRampsecEditField.Editable = 'off';
            app.OxygenRampsecEditField.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.OxygenRampsecEditField.Position = [302 129 46 22];

            % Create O2PercentRampDownsecSpinnerLabel
            app.O2PercentRampDownsecSpinnerLabel = uilabel(app.RampInformationPanel);
            app.O2PercentRampDownsecSpinnerLabel.HorizontalAlignment = 'right';
            app.O2PercentRampDownsecSpinnerLabel.VerticalAlignment = 'top';
            app.O2PercentRampDownsecSpinnerLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.O2PercentRampDownsecSpinnerLabel.Position = [10 74 182 22];
            app.O2PercentRampDownsecSpinnerLabel.Text = 'O2 Percent Ramp Down (%/sec.)';

            % Create O2PercentRampDownsecSpinner
            app.O2PercentRampDownsecSpinner = uispinner(app.RampInformationPanel);
            app.O2PercentRampDownsecSpinner.ValueChangedFcn = createCallbackFcn(app, @O2PercentRampDownsecSpinnerValueChanged, true);
            app.O2PercentRampDownsecSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.O2PercentRampDownsecSpinner.BackgroundColor = [0 1 1];
            app.O2PercentRampDownsecSpinner.Position = [198 77 61 22];

            % Create SLMsEditField_15Label
            app.SLMsEditField_15Label = uilabel(app.RampInformationPanel);
            app.SLMsEditField_15Label.HorizontalAlignment = 'right';
            app.SLMsEditField_15Label.VerticalAlignment = 'top';
            app.SLMsEditField_15Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_15Label.Position = [267 80 34 15];
            app.SLMsEditField_15Label.Text = 'SLM/s';

            % Create SLMsEditField_15
            app.SLMsEditField_15 = uieditfield(app.RampInformationPanel, 'numeric');
            app.SLMsEditField_15.Editable = 'off';
            app.SLMsEditField_15.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMsEditField_15.Position = [307 77 41 22];

            % Create O2percentplateauVolumeLabel
            app.O2percentplateauVolumeLabel = uilabel(app.RampInformationPanel);
            app.O2percentplateauVolumeLabel.HorizontalAlignment = 'right';
            app.O2percentplateauVolumeLabel.VerticalAlignment = 'top';
            app.O2percentplateauVolumeLabel.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.O2percentplateauVolumeLabel.Position = [14 28 180 22];
            app.O2percentplateauVolumeLabel.Text = 'O2 Percent Plateau (Volume %)';

            % Create O2PercentPlateauVolumeSpinner
            app.O2PercentPlateauVolumeSpinner = uispinner(app.RampInformationPanel);
            app.O2PercentPlateauVolumeSpinner.ValueChangedFcn = createCallbackFcn(app, @O2PercentPlateauVolumeSpinnerValueChanged, true);
            app.O2PercentPlateauVolumeSpinner.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.O2PercentPlateauVolumeSpinner.BackgroundColor = [0 1 1];
            app.O2PercentPlateauVolumeSpinner.Position = [200 31 60 22];

            % Create SLMEditField_18Label
            app.SLMEditField_18Label = uilabel(app.RampInformationPanel);
            app.SLMEditField_18Label.HorizontalAlignment = 'right';
            app.SLMEditField_18Label.VerticalAlignment = 'top';
            app.SLMEditField_18Label.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_18Label.Position = [276 35 25 15];
            app.SLMEditField_18Label.Text = 'SLM';

            % Create SLMEditField_18
            app.SLMEditField_18 = uieditfield(app.RampInformationPanel, 'numeric');
            app.SLMEditField_18.Editable = 'off';
            app.SLMEditField_18.FontColor = [0.129411764705882 0.129411764705882 0.129411764705882];
            app.SLMEditField_18.Position = [307 31 41 22];

            % Show the figure after all components are created
            app.NarrowChannel.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = NCA_GUI_OCT2025

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.NarrowChannel)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.NarrowChannel)
        end
    end
end