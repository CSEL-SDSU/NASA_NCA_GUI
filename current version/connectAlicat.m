function aliComm=connectAlicat
% * Purpose
% Form a connection to the Alicat controller. By default 
% connects to COM port hard-coded into file. User may overide
% this.

% COM='COM1'; % DB9 cable
COM = 'COM6'; % USB cable

fprintf('Connecting to Alicats on port %s\n',COM)

aliComm=serial(COM,...
        'TimeOut', 2,...
        'BaudRate', 38400,...
        'Terminator','CR');
%delete(instrfind)
fopen(aliComm)
%fclose(aliComm)
%delete(aliComm)
%clear aliComm

