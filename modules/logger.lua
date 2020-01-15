-- Log levels.
INFO = 1;
WARN = 2;
ERROR = 3;
DEBUG = 4;

local prefix = "BISClassic";
local severity = { "INFO", "WARN", "ERROR", "DEBUG" };

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

    if loglevel == DEBUG then
        if(BestInSlotClassicDB.debug.enabled) then
            report(prefix.." - "..severity[loglevel].." - "..msg);
        end
    else
        print(prefix.." - "..severity[loglevel].." - "..msg);
    end
    
end