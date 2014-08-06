
newMemory = 6000;   % Desired amount of Matlab Java heap memory in MB

% Confirm operation
confirmationDialog = strcat('This script will attempt to set Matlab''s',...
    ' maximum Java heap memory.', [ 'You have asked to allocate ' num2str(newMemory)],...
    'MB of memory. Please verify that this seems',...
    ' correct. This script will automatically close Matlab upon completion. The new java heap',...
    ' memory settings will take effect the next time Matlab is started.');
proceed = questdlg(confirmationDialog, 'Confirm Execution', 'Proceed',...
    'Stop script', 'Proceed');

switch proceed
    case 'Stop script'
        disp('Script stopped')
        return
    case 'Proceed'
        chjvheme(newMemory) % Change Java heap memory
        consolecountdown()  % 10 second countdown
        quit
end