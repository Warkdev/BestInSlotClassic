-- Basic Command Handlers File. New commands would be ideally added here.

local testItems = { 12940, 17075, 19352, 19888, 21650, 23577 };

function ShowManager(args)
    ShowManager();
end

function OpenConfigPane(args)
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
end

local function ShowHelp(args)
    log("BestInSlotClassic usage: ", INFO);
    log("/bis : Configure the add-on", INFO);
    log("/bis loglevel <level> : Set the log level for message output, possible levels are: INFO, WARN, ERROR, DEBUG", INFO);    
    log("/bis help : Show this help", INFO);
    log("/bis reset : Reset all add-on settings", INFO);
    log("/bis settings: Define add-on general settings", INFO);        
end

function HandleLogLevel(args)
    args = args:lower();    

    local level = {
        ["info"] = function() BestInSlotClassicDB.loglevel = "INFO"; end,
        ["warn"] = function() BestInSlotClassicDB.loglevel = "WARN"; end,
        ["error"] = function() BestInSlotClassicDB.loglevel = "ERROR"; end,
        ["debug"] = function() BestInSlotClassicDB.loglevel = "DEBUG"; end
    }

    if type(level[args]) == "function" then
        level[args]();
        log("Log level set to: "..BestInSlotClassicDB.loglevel, INFO);    
    else
        log("Unknown log level "..args, INFO);
    end

    
end

function PrintVars(args)
    log("Log level: ", BestInSlotClassicDB.loglevel, INFO);
    log("Hide Minimap Icon: ", BestInSlotClassicDB.minimap.hide, INFO);
    log("Minimap Icon Position: "..BestInSlotClassicDB.minimap.minimapPos, INFO);
end

local function Reset(args)
    ResetDefaults();
    UpdateMinimapIcon();
    log("BestInSlotClassic has been reset to default values.", DEBUG);
end

-- "Elegant" way to handle switch case in LUA.
handlers = {
    [""] = ShowManager,
    ["settings"] = OpenConfigPane,
    ["loglevel"] = HandleLogLevel,
    ["help"] = ShowHelp,    
    ["reset"] = Reset,
    ["vars"] = PrintVars    
}

-- Parser of all commands provided which should start by /bis or /bestinslot.
-- Displays help if the command is unknown.
local function HandleCommands(msg, editBox)
    local split = {};

    for substring in msg:gmatch("%S+") do        
        table.insert(split, substring);
    end    
    
    if split[1] == nil then
        msg = "";
    else
        msg = split[1];
    end

    if type(handlers[msg]) == "function" then
        handlers[msg](split[2]);
    else
        log("Unknown command: "..msg, INFO);
        handlers["help"](msg);
    end    
end

-- Slash Commands
SLASH_BIS1, SLASH_BIS2 = "/bis", "/bestinslot";
SlashCmdList["BIS"] = HandleCommands;