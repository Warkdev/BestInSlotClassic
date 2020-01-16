-- Registering the add-on as a category of the interface pane.
local settings;
local debugCheckbox;
local minimapCheckbox;
local minimapPosSlider;

function Initialize_LogLevelDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();

    for idx, value in ipairs(logseverity) do
        info.text, info.checked = value, false;
        UIDropDownMenu_AddButton(info);
    end
end

local function CreateDropDownList(name, parent, width, x, y, items, callback)
    local dropdown = CreateFrame("Frame", name, parent, "UIDropDownMenuTemplate");    
    dropdown:SetPoint("TOPLEFT", x, y);
    UIDropDownMenu_SetWidth(dropdown, width);
    UIDropDownMenu_SetText(dropdown, BestInSlotClassicDB.loglevel);
    UIDropDownMenu_Initialize(dropdown, dropdownInitializer[items]);

    return dropdown;
end

function CreateSettingsInterface()
    settings = CreateFrame("FRAME", "BestInSlotClassicsettings", UIParent);
    settings.name = "BestInSlotClassic";

    settings.okay = function()
        logger("Settings saved!", DEBUG);        
    end
    
    settings.cancel = function()
        logger("Settings denied!", DEBUG);
    end
    
    settings.default = function()
        ResetDefaults();        
    end
    
    settings.refresh = function()
        logger("Refresh called.", DEBUG);        
    end

    debugCheckbox = CreateCheckBox("BISCDebugCB", "Enable debug mode for the add-on", settings, 20, -40, "Enable/Disable debug mode", function (self)           
        HandleDebug();
    end)

    minimapCheckbox = CreateCheckBox("BISCMinimapCB", "Show Minimap Icon", settings, 20, -75, "Show/Hide Minimap Icon", function(self)        
        local isChecked = minimapCheckbox:GetChecked();        
        BestInSlotClassicDB.minimap.hide = (not isChecked);        
        UpdateMinimapIcon();        
    end)

    minimapPosSlider = CreateSlider("BISCMinimapPosSlider", "Minimap Icon Position", settings, 0, 360, 20, -120, function(self, newValue)
        if newValue ~= BestInSlotClassicDB.minimap.minimapPos then
            BestInSlotClassicDB.minimap.minimapPos = newValue;
            UpdateMinimapIcon();
        end
    end)

    SetValues();

    InterfaceOptions_AddCategory(settings);
end

function SetValues()    
    --debugCheckbox:SetChecked(BestInSlotClassicDB.debug.enabled);
    minimapCheckbox:SetChecked(not BestInSlotClassicDB.minimap.hide);
    minimapPosSlider:SetValue(BestInSlotClassicDB.minimap.minimapPos);
end

