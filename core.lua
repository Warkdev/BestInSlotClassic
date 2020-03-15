local function SetMinimapDefaults()
    if BestInSlotClassicDB.minimap.hide == nil then
        BestInSlotClassicDB.minimap.hide = false;
    end

    if BestInSlotClassicDB.minimap.minimapPos == nil then
        BestInSlotClassicDB.minimap.minimapPos = 175;
    end   
end

local function SetTooltipDefaults()
    if BestInSlotClassicDB.options == nil then
        BestInSlotClassicDB.options = {};
        BestInSlotClassicDB.options.bistooltip = true;
    end
end

local function SetLogLevelDefaults()
    if BestInSlotClassicDB.loglevel == nil then
        BestInSlotClassicDB.loglevel = "INFO";
    end
end

local function SetFilterDefaults()
    if BestInSlotClassicDB.filter == nil then
        BestInSlotClassicDB.filter = {};
    end

    if BestInSlotClassicDB.filter.raid == nil then
        BestInSlotClassicDB.filter.raid = true;
    end

    if BestInSlotClassicDB.filter.worldboss == nil then
        BestInSlotClassicDB.filter.worldboss = true;
    end

    if BestInSlotClassicDB.filter.twohands == nil then
        BestInSlotClassicDB.filter.twohands = false;
    end

    if BestInSlotClassicDB.filter.pvp == nil then
        BestInSlotClassicDB.filter.pvp = true;
    end

    if BestInSlotClassicDB.filter.pvprank == nil then
        BestInSlotClassicDB.filter.pvprank = 1;
    end
end

local function SetDefaults()
    if BestInSlotClassicDB == nil then
        -- First time loading add-on.
        BestInSlotClassicDB = {};
        BestInSlotClassicDB.minimap = {};
        BestInSlotClassicDB.loglevel = nil;
        BestInSlotClassicDB.filter = {};
        BestInSlotClassicDB.options = {};
    end
    SetMinimapDefaults();
    SetLogLevelDefaults();
    SetFilterDefaults();
    SetTooltipDefaults();    
end

function ResetDefaults() 
    BestInSlotClassicDB = nil;    

    SetDefaults();
end

function LoadItemInfo()
    for idx, itemId in pairs(BIS_ITEM_LOAD) do
        GetItemInfo(itemId);
    end
end    

function LoadPlayerInfo()
    -- Player name.
    name = UnitName("player");

    -- Player level.
    level = UnitLevel("player");

    -- Player faction.
    faction, localizedFaction = UnitFactionGroup("player");

    -- Player class info.
    localizedClass, class, classIndex = UnitClass("player");
    
    -- Player race info.
    localizedRace, race, raceID = UnitRace("player");

    -- Player pvp info.
    pvpRank =  UnitPVPRank("player");

    -- Player spec info.
    local maxPoints = 0;
    spec = "Unknown";

    -- No need to check the spec when below level 60.
    if level < 60 then
        return;
    end

    -- Trying to find out which spec has this player to load the correct one by default.
    -- There are some specificities like druids (4 specs), rogue (2 specs-type although they are not spec).
    local numTalentTabs = GetNumTalentTabs();    

    bis_log("Num Talent Tabs: "..numTalentTabs, DEBUG);    

    for idx=1, numTalentTabs, 1 do
        local name, texture, pointsSpent, fileName = GetTalentTabInfo(idx);
        if(tonumber(pointsSpent) > maxPoints) then
            spec = fileName;
            maxPoints = tonumber(pointsSpent);
        end        
        bis_log(name..": "..pointsSpent..", "..fileName, DEBUG);        
    end
    if class == "DRUID" and spec == "DruidFeralCombat" then
        -- Need to find out whether it's a Feral Tank or DPS.
        -- This is done by checking the talent thick skin.
        local talentName, iconTexture, tier, column, rank, maxRank, isExceptional, available = GetTalentInfo(2, 5);
        if rank == maxRank then
            spec = "DruidFeralTank";
        else
            spec = "DruidFeralDPS";
        end
    end

    -- BiS are apparently for PriestHybrid but nothing dedicated to Holy or Disc.
    if class == "PRIEST" and (spec == "PriestHoly" or spec == "PriestDiscipline") then
        spec = "PriestHybrid";
    end

    if class == "ROGUE" then
        -- Need to check if his spec is daggers or swords.
        -- This is done by checking the imp. swords talent. If that's maximized, we consider that this rogue is using swords.
        local talentName, iconTexture, tier, column, rank, maxRank, isExceptional, available = GetTalentInfo(2, 15);
        if rank == maxRank then
            spec = "RogueSwords";
        else
            spec = "RogueDaggers";
        end
    end

    bis_log("Your spec is: "..spec, DEBUG);
end

function PrintPlayerInfo()    
    bis_log("Player name: "..name, DEBUG);
    bis_log("Player faction: "..faction, DEBUG);
    bis_log("Player race: "..race, DEBUG);
    bis_log("Player class: "..class, DEBUG);
    bis_log("Player PvP Rank: "..pvpRank, DEBUG);
    bis_log("Player Spec: "..spec, DEBUG);
end

BIS_LibExtraTip = LibStub("LibExtraTip-1");
-- Creating Event Frame.
local frame = CreateFrame("FRAME", "BestInSlotClassicEventHandler");
frame:RegisterEvent("ADDON_LOADED");

local function eventHandler(self, event, args1, ...)
    if event == "ADDON_LOADED" and args1 == "BestInSlotClassic" then        
        SetDefaults();              
        CreateMinimapIcon();
        CreateSettingsInterface();        
        BIS_SetUILocale();
        -- Attempt to prevent buggy display.        
        LoadPlayerInfo();
        LoadItemInfo();
        BIS_LibExtraTip:AddCallback({type = "item", callback = BIS_OnGameTooltipSetItem, allevents = true})
        --BIS_LibExtraTip:RegisterTooltip(GameTooltip)
        BIS_LibExtraTip:RegisterTooltip(ItemRefTooltip)
        --GameTooltip:HookScript("OnTooltipSetItem", BIS_OnGameTooltipSetItem);
        --ItemRefTooltip:HookScript("OnTooltipSetItem", BIS_OnGameTooltipSetItem);
        bis_log("BestInSlotClassic v"..VERSION.." loaded", INFO);
    end
end

frame:SetScript("OnEvent", eventHandler);