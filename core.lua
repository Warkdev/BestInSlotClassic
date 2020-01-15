print("BestInSlotClassic v0.1beta loaded");

local function log(message)
    if(BestInSlotClassicDB.debug.enabled) then
        print(message);
    end
end

local function SetMinimapDefaults()
    if BestInSlotClassicDB.minimap.hide == nil then
        BestInSlotClassicDB.minimap.hide = false;
    end

    if BestInSlotClassicDB.minimap.minimapPos == nil then
        BestInSlotClassicDB.minimap.minimapPos = 175;
    end   
end

local function SetDebugDefaults()
    if BestInSlotClassicDB.debug.enabled == nil then
        BestInSlotClassicDB.debug.enabled = false;
    end
end

local function SetDefaults()
    if BestInSlotClassicDB == nil then
        -- First time loading add-on.
        BestInSlotClassicDB = {};
        BestInSlotClassicDB.minimap = {};
        BestInSlotClassicDB.debug = {};
    end
    SetMinimapDefaults();
    SetDebugDefaults();
end

function ResetDefaults() 
    BestInSlotClassicDB = nil;    

    SetDefaults();
end

function LoadPlayerInfo()
    -- Player name.
    name = UnitName("player");

    -- Player faction.
    faction, localizedFaction = UnitFactionGroup("player");

    -- Player class info.
    localizedClass, class, classIndex = UnitClass("player");
    -- Player pvp info.
    pvpRank =  UnitPVPRank("player");

    -- Player spec info.
    local maxPoints = 0;
    spec = "Unknown";

    log("Num Talent Tabs: "..GetNumTalentTabs());
    for idx=1, GetNumTalentTabs(), 1 do
        local name, texture, pointsSpent, fileName = GetTalentTabInfo(idx);
        if(tonumber(pointsSpent) > maxPoints) then
            spec = name;
            maxPoints = tonumber(pointsSpent);
        end        
        log(name, pointsSpent, fileName);        
    end    
    log("Your spec is: "..spec);
end

local function PrintPlayerInfo()    
    log("Player name: "..name);
    log("Player faction: "..faction);
    log("Player class: "..class);
    log("Player PvP Rank: "..pvpRank);
    log("Player Spec: "..spec);
end

-- Creating Event Frame.
local frame = CreateFrame("FRAME", "BestInSlotClassicEventHandler");
frame:RegisterEvent("ADDON_LOADED");

local function eventHandler(self, event, args1, ...)
    if event == "ADDON_LOADED" and args1 == "BestInSlotClassic" then
        LoadPlayerInfo();
        PrintPlayerInfo();
        SetDefaults();
        CreateMinimapIcon();
        CreateSettingsInterface();
    end        
end

frame:SetScript("OnEvent", eventHandler);