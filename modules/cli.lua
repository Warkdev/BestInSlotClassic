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
    print("BestInSlotClassic usage: ");
    print("/bis : Configure the add-on");
    print("/bis loglevel <level> : Set the log level for message output, possible levels are: INFO, WARN, ERROR, DEBUG");    
    print("/bis help : Show this help");
    print("/bis reset : Reset all add-on settings");
    print("/bis settings: Define add-on general settings");        
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
    print("Debug enabled: ", BestInSlotClassicDB.debug.enabled);
    print("Hide Minimap Icon: ", BestInSlotClassicDB.minimap.hide);
    print("Minimap Icon Position: "..BestInSlotClassicDB.minimap.minimapPos);
end

function TestPhases(args)
    -- Testing each phases items to see whether the phase is already available in-game.

    local item;
    
    for idx, value in ipairs(testItems) do        
        item = GetItemInfo(value);
        log("Item "..item, DEBUG);
        if item ~= nil then
            log("Phase "..idx..": |cFF00FF00 Available|r", INFO);            
        else
            log("Phase "..idx..": |cFFFF0000 Not available|r", INFO);            
        end
    end    
    
    --[[ itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
    itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, 
    isCraftingReagent = GetItemInfo(23054); ]]--    

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
    ["loglevel"] = HandleLogLevel,
    ["help"] = ShowHelp,    
    ["reset"] = Reset,
    ["vars"] = PrintVars,
    ["test"] = TestPhases
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