-- Log levels.
ERROR = 1
WARN = 2;
INFO = 3;
DEBUG = 4;

local prefix = "BISClassic";
logseverity = { "ERROR", "WARN", "INFO", "DEBUG" };
local logsettings;

local function report(message)
    print(message);
end

function bis_log(msg, level)
    local loglevel = tonumber(level);
    local color;
    if loglevel < ERROR then
        loglevel = ERROR;
    end
    if loglevel > DEBUG then
        loglevel = DEBUG;
    end    

    if BestInSlotClassicDB.loglevel == "ERROR" then        
        logsettings = 1;
    elseif BestInSlotClassicDB.loglevel == "WARN" then        
        logsettings = 2;
    elseif BestInSlotClassicDB.loglevel == "INFO" then        
        logsettings = 3;
    else        
        logsettings = 4;
    end
    
    if level == INFO then
        color = "FF33FFFF";
    elseif level == WARN then
        color = "FFFF8000";
    elseif level == ERROR then
        color = "FFFF0000";
    else
        color = "FFFF33FF";
    end

    if logsettings >= loglevel then        
        report(prefix.." - |c"..color..logseverity[loglevel].."|r - "..msg);            
    end
    
end