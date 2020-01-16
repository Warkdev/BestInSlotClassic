print("BestInSlotClassic v0.1beta loaded");

local function SetMinimapDefaults()
    if BestInSlotClassicDB.minimap.hide == nil then
        BestInSlotClassicDB.minimap.hide = false;
    end

    if BestInSlotClassicDB.minimap.minimapPos == nil then
        BestInSlotClassicDB.minimap.minimapPos = 175;
    end   
end

local function SetLogLevelDefaults()
    if BestInSlotClassicDB.loglevel == nil then
        BestInSlotClassicDB.loglevel = "INFO";
    end
end

local function SetDefaults()
    if BestInSlotClassicDB == nil then
        -- First time loading add-on.
        BestInSlotClassicDB = {};
        BestInSlotClassicDB.minimap = {};
        BestInSlotClassicDB.loglevel = nil;
    end
    SetMinimapDefaults();
    SetLogLevelDefaults();
end

function ResetDefaults() 
    BestInSlotClassicDB = nil;    

    SetDefaults();
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

    log("Num Talent Tabs: "..numTalentTabs, DEBUG);
    
    print(GetTalentInfo(2, 5));

    for idx=1, numTalentTabs, 1 do
        local name, texture, pointsSpent, fileName = GetTalentTabInfo(idx);
        if(tonumber(pointsSpent) > maxPoints) then
            spec = fileName;
            maxPoints = tonumber(pointsSpent);
        end        
        log(name..": "..pointsSpent..", "..fileName, DEBUG);        
    end
    if class == "DRUID" and spec == "DruidFeral" then
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

    log("Your spec is: "..spec, DEBUG);
end

function PrintPlayerInfo()    
    log("Player name: "..name, DEBUG);
    log("Player faction: "..faction, DEBUG);
    log("Player race: "..race, DEBUG);
    log("Player class: "..class, DEBUG);
    log("Player PvP Rank: "..pvpRank, DEBUG);
    log("Player Spec: "..spec, DEBUG);
end

-- Creating Event Frame.
local frame = CreateFrame("FRAME", "BestInSlotClassicEventHandler");
frame:RegisterEvent("ADDON_LOADED");

local function eventHandler(self, event, args1, ...)
    if event == "ADDON_LOADED" and args1 == "BestInSlotClassic" then        
        SetDefaults();
        CreateMinimapIcon();
        CreateSettingsInterface();
    end
end

frame:SetScript("OnEvent", eventHandler);