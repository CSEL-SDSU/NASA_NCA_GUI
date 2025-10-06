function [QASmallSetpoint,QALargeSetpoint,QBSmallSetpoint,QBLargeSetpoint] = calcNCASetpoints(QA1,QB1,MFCStruct)
%startFlow: subroutine that goes through the the procedure for starting the
%four mass flow controllers used to set flow in NCA-B.
%   Routine takes inputs of the desired total flow rates for each gas,
%   calculates each MFC's setpoint such that no MFC is being used outside
%   of its operating range.
%   Jack Volponi, 10/6/2025
%
%   Modification suggestions: The MFCStruct should be converted into an
%   array or struct of MFC objects so that all the neccesary properties and
%   MFC info maybe automatically verified to be there. Bryan Tan (another
%   CSEL student) has created classes for MFCs, but I am not familliar with
%   them. They could be potentially used here to store MFC data and passed
%   to this function as an array or struct of MFC objects.
    arguments
        QA1 {mustBeNumeric} %Mass flow rate of gas A in SLPM (N2)
        QB1 {mustBeNumeric} %Mass flow rate of gas B in SLPM (O2)
        MFCStruct %Struct containing each MFC label/tag and their operating ranges
    end
    
    %Calculate flow rates
    %Calculating the 'leftover' flow for each gas that the small
    % MFC does not have capacity for.
    QALeftover = QA1 - MFCStruct.N2UnitSmallMax;
    QBLeftover = QB1 - MFCStruct.O2UnitSmallMax;
    
    %Calculate flow for gas A (N2) MFCs
    %If the leftover is less than or equal to zero, dont use large
    %MFC. If the leftover is between 0 and 1 then set the large MFC
    %to 1 and use the small MFC for the leftover
    % otherwise, supply leftover with large MFC
    % Same logic for oxygen
    if QALeftover <= 0
        QASmallSetpoint = QA1;
        QALargeSetpoint = 0;
    elseif QALeftover > 0 && QALeftover <= MFCStruct.N2UnitLargeMin
        QASmallSetpoint = QALeftover;
        QALargeSetpoint = MFCStruct.N2UnitLargeMin;
    elseif QALeftover > MFCStruct.N2UnitSmallMax
        QASmallSetpoint = MFCStruct.N2UnitSmallMax;
        QALargeSetpoint = QALeftover;
    else
        warning('Error computing gas A Flows. Leftover computed incorrectly QALeftover = %f.2, QA1 = %f.2\n',QALeftover, MFCStruct.QA1);
    end
    
    %Calculate flow for gas B (O2) MFCs
    if QBLeftover <= 0
        QBSmallSetpoint = QB1;
        QBLargeSetpoint = 0;
    elseif QBLeftover > 0 && QBLeftover <= MFCStruct.O2UnitLargeMin
        QBSmallSetpoint = QBLeftover;
        QBLargeSetpoint = MFCStruct.O2UnitLargeMin;
    elseif QBLeftover > 0
        QBSmallSetpoint = MFCStruct.O2UnitSmallMax;
        QBLargeSetpoint = QBLeftover;
    else
        warning('Error computing gas B Flows. Leftover computed incorrectly QBLeftover = %f.2, QB1 = %f.2\n',QBLeftover, MFCStruct.QB1);
    end

    % setpoints = [QASmallSetpoint,QALargeSetpoint,QBSmallSetpoint,QBLargeSetpoint];
end