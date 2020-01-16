-- Log levels.
INFO = 1;
WARN = 2;
ERROR = 3;
DEBUG = 4;

local prefix = "BISClassic";
logseverity = { "INFO", "WARN", "ERROR", "DEBUG" };
local logsettings;

local function report(message)
    print(message);
end

function log(msg, level)
    local loglevel = tonumber(level);
    if loglevel < INFO then
        loglevel = INFO;
    end
    if loglevel > DEBUG then
        loglevel = DEBUG;
    end    

    if BestInSlotClassicDB.loglevel == "INFO" then
        logsettings = 1;
    elseif BestInSlotClassicDB.loglevel == "WARN" then
        logsettings = 2;
    elseif BestInSlotClassicDB.loglevel == "ERROR" then
        logsettings = 3;
    else
        logsettings = 4;
    end
    
    if logsettings >= loglevel then        
        report(prefix.." - "..logseverity[loglevel].." - "..msg);            
    end
    
end