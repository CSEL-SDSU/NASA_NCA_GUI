function OUT =readMFC(MFC,quiet)
% Read data from defined Alicat MFC
%
% function OUT=readMFC(MFC,quiet)
%
% Purpose
% Read data from defined Alicat MFC.
%
% Inputs
% MFC - the string defining which MFC to read fom (e.g. 'A', 'C', etc)
% quiet - optional. true by default.
%
% Rob Campbell - March 20th 2008 - CSHL

% Example of the data format is:
% fprintf(aliConnect,'A10000'); fscanf(aliConnect)
%
%ID; pressure in; temp; vol flow ; mass flow;  set point ; gas
%A +014.61 +023.30 +00.000 +00.000 00.156     Air
%
% Modified by JTV 3/25/2026: switched from fscanf and strread to fgetl and
% textscan for more robust reading MFC response


global aliComm;
if isempty(aliComm), aliComm=connectAlicat; end

if length(MFC)~=1
    error('Only one MFC should be specified')
end

if nargin<2, quiet=1; end

try


    if aliComm.BytesAvailable > 0
        % warning('Stale bytes before request to %s: %d', MFC, aliComm.BytesAvailable);
        flushinput(aliComm);
    end
    fprintf(aliComm,MFC); %Ping the MFC
    % IN=fscanf(aliComm); %Read back tthe data

    IN = fgetl(aliComm);
    % Replace null charceters with spaces. Null characters are not
    % recognized as delimiters (not sure why they are even produced)
    IN(IN==0) = ' ';
    % IN = regexprep(IN, '[^\x20-\x7E]', ' ');
    % Turn returnOnError true for release
    % data = textscan(IN, '%s%f%f%f%f%f%s',1, 'Delimiter', ' ',ReturnOnError=true);
    data = textscan(IN, '%s%f%f%f%f%f%s',1, 'Delimiter', ' ',ReturnOnError=false, MultipleDelimsAsOne=true);



    [...
        OUT.ID, ...
        OUT.pressure, ...
        OUT.temp, ...
        OUT.volumetricFlow, ...
        OUT.massFlow, ...
        OUT.setPoint, ...
        OUT.gas ...
        ] = data{:};
    
    % cleanLine = regexprep(IN, '[^\x20-\x7E]', ' '); %remove corrupted characters and replace with space
    % tokens = strsplit(strtrim(cleanLine));
    % 
    % if numel(tokens) < 7
    %     error('Malformed Alicat line: <%s>', IN);
    % end
    % 
    % OUT.ID             = tokens{1};
    % OUT.pressure       = str2double(tokens{2});
    % OUT.temp           = str2double(tokens{3});
    % OUT.volumetricFlow = str2double(tokens{4});
    % OUT.massFlow       = str2double(tokens{5});
    % OUT.setPoint       = str2double(tokens{6});
    % OUT.gas            = tokens{7};
    % OUT.time           = now;

    % [...
    %     OUT.ID, ...
    %     OUT.pressure,...
    %     OUT.temp,...
    %     OUT.volumetricFlow,...
    %     OUT.massFlow,...
    %     OUT.setPoint,...
    %     OUT.gas...
    %     ]=...
    %     strread(IN,'%s%f%f%f%f%f%s', 'delimiter', ' '); %Format the data
    %textscan(IN,'%s%f%f%f%f%f%s', 'delimiter', ' '); %Format the data
    %strread(IN,'%s%f%f%f%f%f%s', 'delimiter', ' '); %Format the data
    OUT.ID = cell2mat(OUT.ID);
    OUT.gas = cell2mat(OUT.gas);
    OUT.time = now;
    
    % if any(isnan([OUT.ID, OUT.pressure, OUT.temp, OUT.volumetricFlow,OUT.massFlow, ...
    %     OUT.setPoint, OUT.gas]))
    %     disp(":)\n");
    % end

    %Set flow variables to zero if empty
    specialArray = fieldnames(OUT);
    for i = 2:numel(specialArray) - 2
        if isempty(OUT.(specialArray{i}))
            OUT.(specialArray{i}) = 0;
        end
    end
    if isempty(OUT.ID)
        OUT.ID = MFC;
    end
catch e
    if ~quiet
        disp('Problem reading from serial port')
    end
    OUT = [];
    flushinput(aliComm); %Clean up on exception 
    %OUT
end
% flushAlicatBuffer;
end
