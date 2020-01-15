print("BestInSlotClassic v0.1beta loaded");

local localizedClass, class, classIndex = UnitClass("player");

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