-- Basic Command Handlers File. New commands would be ideally added here.
function BIS:ShowManager(args)
    ShowManager();
end

function BIS:OpenConfigPane(args)
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
end

local function ShowHelp(args)
    BIS:logmsg("BestInSlotClassic usage: ", LVL_INFO);
    BIS:logmsg("/bis help : Show this help", LVL_INFO);
    BIS:logmsg("/bis : Configure the add-on", LVL_INFO);
    BIS:logmsg("/bis loglevel <level> : Set the log level for message output, possible levels are: INFO, WARN, ERROR, DEBUG", LVL_INFO);        
    BIS:logmsg("/bis reset : Reset all add-on settings", LVL_INFO);
    BIS:logmsg("/bis settings: Define add-on general settings", LVL_INFO);        
    BIS:logmsg("/bis version: Displays the add-on version", LVL_INFO);
    BIS:logmsg("/bis tooltip: Enable or disable the tooltip enrichment with BIS information", LVL_INFO);
    BIS:logmsg("/bis obtained: Define whether items that you've equipped or in your bag should appear in the result search of your class/spec search", LVL_INFO);
end

function BIS:HandleLogLevel(args)
    args = args:lower();    

    local level = {
        ["info"] = function() BestInSlotClassicDB.loglevel = "INFO"; end,
        ["warn"] = function() BestInSlotClassicDB.loglevel = "WARN"; end,
        ["error"] = function() BestInSlotClassicDB.loglevel = "ERROR"; end,
        ["debug"] = function() BestInSlotClassicDB.loglevel = "DEBUG"; end
    }

    if type(level[args]) == "function" then
        level[args]();
        BIS:logmsg("Log level set to: "..BestInSlotClassicDB.loglevel, LVL_INFO);    
    else
        BIS:logmsg("Unknown log level "..args, LVL_INFO);
    end

    
end

local function ShowVersion(args)    
    BIS:logmsg("BestInSlot - Classic v"..VERSION, LVL_INFO);
end

local function HandleTooltip(args)    
    BestInSlotClassicDB.options.bistooltip = not BestInSlotClassicDB.options.bistooltip;
    if BestInSlotClassicDB.options.bistooltip then
        BIS:logmsg("Tooltip BIS enrichment function has been enabled", LVL_INFO);
    else
        BIS:logmsg("Tooltip BIS enrichment function has been disabled", LVL_INFO);
    end
end

function PrintVars(args)
    --BIS:logmsg("Log level: ", BestInSlotClassicDB.loglevel, INFO);
    --BIS:logmsg("Hide Minimap Icon: ", BestInSlotClassicDB.minimap.hide, INFO);
    --BIS:logmsg("Minimap Icon Position: "..BestInSlotClassicDB.minimap.minimapPos, INFO);
    --print("|cffffffff|Henchant:20024|h[Enchant]|h|r");
    --print("|cff9d9d9d|Hitem:12645::::::::::::|h[Thorium Spike]|h|r");
    --print("|T"..GetItemIcon(12645)..":16|t");
    -- Returns nil when in Dungeon.
    --print("MapUnit: "..(C_Map.GetBestMapForUnit("player") or "nil"));
    -- Returns Instance Info.
    --print("GetInstanceInfo: "..GetInstanceInfo());
    -- Returns Map Info.
    --local info = C_Map.GetMapInfo(1429)      
    --print("C_Map.GetMapInfo(uiMapID): "..info.name);
    --print("GetRealZoneText: "..GetRealZoneText(1429));
    --info = C_Map.GetMapInfo(409)
    --print("C_Map.GetMapInfo(uiMapID): "..info.name);
    --print("GetRealZoneText: "..GetRealZoneText(246));
    --print(GetClassInfo(1));
    --for factionIndex = 1, GetNumFactions() do
    --    local name, description, standingId, bottomValue, topValue, earnedValue, atWarWith, canToggleAtWar,
    --        isHeader, isCollapsed, hasRep, isWatched, isChild, factionID = GetFactionInfo(factionIndex)
    --    if hasRep or not isHeader then
    --        DEFAULT_CHAT_FRAME:AddMessage("Faction: " .. name .. " - " .. earnedValue)
    --    end
    --end
end

local function Reset(args)
    ResetDefaults();
    UpdateMinimapIcon();
    BIS:logmsg("BestInSlotClassic has been reset to default values.", LVL_DEBUG);    
end

local function ShowManager(args)
    BIS:ShowManager(args);
end

local function OpenConfigPane(args)
    BIS:OpenConfigPane(args);
end

local function HandleLogLevel(args)
    BIS:HandleLogLevel(args);
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
        BIS:logmsg("Unknown command: "..msg, LVL_INFO);
        handlers["help"](msg);
    end    
end

-- Slash Commands
SLASH_BIS1, SLASH_BIS2 = "/bis", "/bestinslot";
SlashCmdList["BIS"] = HandleCommands;