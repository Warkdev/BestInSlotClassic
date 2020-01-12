-- Basic Command Handlers File. New commands would be ideally added here.

function ShowManager(args)
    ShowManager();
end

function OpenConfigPane(args)
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
end

local function ShowHelp(args)
    print("BestInSlotClassic usage: ");
    print("/bis : Configure the add-on");
    print("/bis debug : Enable/disable debug mode");    
    print("/bis help : Show this help");
    print("/bis reset : Reset all add-on settings");
    print("/bis settings: Define add-on general settings");        
end

function HandleDebug(args)
    if not (BestInSlotClassicDB.debug.enabled) then
        BestInSlotClassicDB.debug.enabled = true;        
        print("Debug mode enabled !");
    else
        BestInSlotClassicDB.debug.enabled = false;
        print("Debug mode disabled !");
    end
end

function PrintVars(args)
    print("Debug enabled: ", BestInSlotClassicDB.debug.enabled);
    print("Hide Minimap Icon: ", BestInSlotClassicDB.minimap.hide);
    print("Minimap Icon Position: "..BestInSlotClassicDB.minimap.minimapPos);
end

local function Reset(args)
    ResetDefaults();
    UpdateMinimapIcon();
    print("BestInSlotClassic has been reset to default values.");
end

-- "Elegant" way to handle switch case in LUA.
handlers = {
    [""] = ShowManager,
    ["settings"] = OpenConfigPane,
    ["debug"] = HandleDebug,
    ["help"] = ShowHelp,    
    ["reset"] = Reset,
    ["vars"] = PrintVars
}

-- Parser of all commands provided which should start by /bis or /bestinslot.
-- Displays help if the command is unknown.
local function HandleCommands(msg, editBox)
    if type(handlers[msg]) == "function" then
        handlers[msg](msg);
    else
        print("Unknown command: "..msg);
        handlers["help"](msg);
    end    
end

-- Slash Commands
SLASH_BIS1, SLASH_BIS2 = "/bis", "/bestinslot";
SlashCmdList["BIS"] = HandleCommands;