-- Log levels.
LVL_ERROR = 1
LVL_WARN = 2;
LVL_INFO = 3;
LVL_DEBUG = 4;

local prefix = "BISClassic";
logseverity = { "ERROR", "WARN", "INFO", "DEBUG" };
local logsettings;

local function report(message)        
    print(message);
end

function BIS:logmsg(msg, level)    
    local loglevel = tonumber(level);
    local color;
    if loglevel < LVL_ERROR then
        loglevel = LVL_ERROR;
    end
    if loglevel > LVL_DEBUG then
        loglevel = LVL_DEBUG;
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
    
    if level == LVL_INFO then
        color = "FF33FFFF";
    elseif level == LVL_WARN then
        color = "FFFF8000";
    elseif level == LVL_ERROR then
        color = "FFFF0000";
    else
        color = "FFFF33FF";
    end

    if logsettings >= loglevel then        
        report(prefix.." - |c"..color..logseverity[loglevel].."|r - "..msg);            
    end
    
end