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
    bis_log("BestInSlotClassic usage: ", INFO);
    bis_log("/bis : Configure the add-on", INFO);
    bis_log("/bis loglevel <level> : Set the log level for message output, possible levels are: INFO, WARN, ERROR, DEBUG", INFO);    
    bis_log("/bis help : Show this help", INFO);
    bis_log("/bis reset : Reset all add-on settings", INFO);
    bis_log("/bis settings: Define add-on general settings", INFO);        
    bis_log("/bis version: Displays the add-on version", INFO);
    bis_log("/bis tooltip: Enable or disable the tooltip enrichment with BIS information", INFO);
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
        bis_log("Log level set to: "..BestInSlotClassicDB.loglevel, INFO);    
    else
        bis_log("Unknown log level "..args, INFO);
    end

    
end

function ShowVersion(args)
    bis_log("BestInSlot - Classic v"..VERSION, INFO);
end

function HandleTooltip(args)
    BestInSlotClassicDB.options.bistooltip = not BestInSlotClassicDB.options.bistooltip;
    if BestInSlotClassicDB.options.bistooltip then
        bis_log("Tooltip BIS enrichment function has been enabled", INFO);
    else
        bis_log("Tooltip BIS enrichment function has been disabled", INFO);
    end
end

function PrintVars(args)
    --bis_log("Log level: ", BestInSlotClassicDB.loglevel, INFO);
    --bis_log("Hide Minimap Icon: ", BestInSlotClassicDB.minimap.hide, INFO);
    --bis_log("Minimap Icon Position: "..BestInSlotClassicDB.minimap.minimapPos, INFO);
    --print("|cffffffff|Henchant:20024|h[Enchant]|h|r");
    --print("|cff9d9d9d|Hitem:12645::::::::::::|h[Thorium Spike]|h|r");
    --print("|T"..GetItemIcon(12645)..":16|t");
    -- Returns nil when in Dungeon.
    print("MapUnit: "..(C_Map.GetBestMapForUnit("player") or "nil"));
    -- Returns Instance Info.
    print("GetInstanceInfo: "..GetInstanceInfo());
    -- Returns Map Info.
    local info = C_Map.GetMapInfo(1429)      
    print("C_Map.GetMapInfo(uiMapID): "..info.name);
    print("GetRealZoneText: "..GetRealZoneText(1429));
    --info = C_Map.GetMapInfo(409)
    --print("C_Map.GetMapInfo(uiMapID): "..info.name);
    print("GetRealZoneText: "..GetRealZoneText(246));
    print(GetClassInfo(1));
    for factionIndex = 1, GetNumFactions() do
        local name, description, standingId, bottomValue, topValue, earnedValue, atWarWith, canToggleAtWar,
            isHeader, isCollapsed, hasRep, isWatched, isChild, factionID = GetFactionInfo(factionIndex)
        if hasRep or not isHeader then
            DEFAULT_CHAT_FRAME:AddMessage("Faction: " .. name .. " - " .. earnedValue)
        end
    end
end

local function Reset(args)
    ResetDefaults();
    UpdateMinimapIcon();
    bis_log("BestInSlotClassic has been reset to default values.", DEBUG);
end

-- "Elegant" way to handle switch case in LUA.
handlers = {
    [""] = ShowManager,
    ["settings"] = OpenConfigPane,
    ["loglevel"] = HandleLogLevel,
    ["help"] = ShowHelp,    
    ["reset"] = Reset,
    ["vars"] = PrintVars,
    ["version"] = ShowVersion,
    ["tooltip"] = HandleTooltip
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
        bis_log("Unknown command: "..msg, INFO);
        handlers["help"](msg);
    end    
end

-- Slash Commands
SLASH_BIS1, SLASH_BIS2 = "/bis", "/bestinslot";
SlashCmdList["BIS"] = HandleCommands;