BIS = {};

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
    end

    if BestInSlotClassicDB.options.bistooltip == nil then
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

    if BestInSlotClassicDB.filter.soulboundBis == nil then
        BestInSlotClassicDB.filter.soulboundBis = true;
    end
end

local function SetDefaults()
    if BestInSlotClassicDB == nil then
        -- First time loading add-on.
        BestInSlotClassicDB = {};
        BestInSlotClassicDB.minimap = {};
        BestInSlotClassicDB.loglevel = nil;
        BestInSlotClassicDB.options = {};
    end
    SetMinimapDefaults();
    SetLogLevelDefaults();
    SetFilterDefaults();
    SetTooltipDefaults();
end

function BIS:ResetDefaults()
    BestInSlotClassicDB = nil;

    SetDefaults();
end

function BIS:LoadItemInfo()
    for idx, itemId in pairs(BIS_ITEM_LOAD) do
        GetItemInfo(itemId);
    end
end

function BIS:LoadPlayerInfo()
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
    local talentsPoints = {};

    BIS:logmsg("Num Talent Tabs: "..numTalentTabs, LVL_DEBUG);

    for idx=1, numTalentTabs, 1 do
        local name, texture, pointsSpent, fileName = GetTalentTabInfo(idx);
        talentsPoints[idx] = tonumber(pointsSpent);
        if(tonumber(pointsSpent) > maxPoints) then
            spec = fileName;
            maxPoints = tonumber(pointsSpent);
        end
        BIS:logmsg(name..": "..pointsSpent..", "..fileName, LVL_DEBUG);
    end

    if class == "WARRIOR" and spec == "WarriorFury" then
        -- Trying to find if we've a Fury Prot.
        if talentsPoints[3] > 10 then
            spec = "WarriorFuryProtection";
        end
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

    BIS:logmsg("Your spec is: "..spec, LVL_DEBUG);
end

function BIS:PrintPlayerInfo()
    BIS:logmsg("Player name: "..name, LVL_DEBUG);
    BIS:logmsg("Player faction: "..faction, LVL_DEBUG);
    BIS:logmsg("Player race: "..race, LVL_DEBUG);
    BIS:logmsg("Player class: "..class, LVL_DEBUG);
    BIS:logmsg("Player PvP Rank: "..pvpRank, LVL_DEBUG);
    BIS:logmsg("Player Spec: "..spec, LVL_DEBUG);
end

local function OnGameTooltipSetItem(tooltip)
    BIS:OnGameTooltipSetItem(tooltip);
end

BIS_LibExtraTip = LibStub("LibExtraTip-1");
-- Creating Event Frame.
local loaderFrame = CreateFrame("FRAME");
loaderFrame:RegisterEvent("ADDON_LOADED");

local function eventHandler(self, event, args1, ...)
    if event == "ADDON_LOADED" and args1 == "BestInSlotClassic" then
        SetDefaults();
        BIS:CreateMinimapIcon();
        BIS:CreateSettingsInterface();
        BIS:SetUILocale();
        -- Attempt to prevent buggy display.
        BIS:LoadPlayerInfo();
        BIS:LoadItemInfo();
        BIS_LibExtraTip:AddCallback({type = "item", callback = OnGameTooltipSetItem, allevents = true})
        BIS_LibExtraTip:RegisterTooltip(GameTooltip);
        BIS_LibExtraTip:RegisterTooltip(ItemRefTooltip);
        BIS:logmsg("BestInSlotClassic v"..VERSION.." loaded", LVL_INFO);
        loaderFrame:UnregisterAllEvents();
    end
end

loaderFrame:SetScript("OnEvent", eventHandler);