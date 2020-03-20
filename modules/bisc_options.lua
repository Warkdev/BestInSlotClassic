-- Registering the add-on as a category of the interface pane.
local settings;
local loglevelDropdown;
local minimapCheckbox;
local minimapPosSlider;

local function HandleLogLevelDropDown(self, arg1, arg2, checked)    
    local args = arg1:lower();    

    local level = {
        ["info"] = function() BestInSlotClassicDB.loglevel = "INFO"; end,
        ["warn"] = function() BestInSlotClassicDB.loglevel = "WARN"; end,
        ["error"] = function() BestInSlotClassicDB.loglevel = "ERROR"; end,
        ["debug"] = function() BestInSlotClassicDB.loglevel = "DEBUG"; end
    }
    
    level[args]();
    UIDropDownMenu_SetText(loglevelDropdown, BestInSlotClassicDB.loglevel);
    BIS:logmsg("Log level set to: "..BestInSlotClassicDB.loglevel, LVL_INFO);
end

local function Initialize_LogLevelDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();

    for idx, value in ipairs(logseverity) do
        info.text, info.arg1, info.func = value, value, HandleLogLevelDropDown;
        UIDropDownMenu_AddButton(info);
    end
end

local function CreateDropDownList(name, parent, width, x, y)
    local dropdown = CreateFrame("Frame", name, parent, "UIDropDownMenuTemplate");    
    dropdown:SetPoint("TOPLEFT", x, y);
    UIDropDownMenu_SetWidth(dropdown, width);
    UIDropDownMenu_SetText(dropdown, BestInSlotClassicDB.loglevel);
    UIDropDownMenu_Initialize(dropdown, Initialize_LogLevelDropDown);    

    return dropdown;
end

function BIS:CreateSettingsInterface()
    local settings = CreateFrame("FRAME", "BestInSlotClassicsettings", UIParent);
    settings.name = "BestInSlotClassic";

    settings.okay = function()
        logger("Settings saved!", LVL_DEBUG);        
    end
    
    settings.cancel = function()
        logger("Settings denied!", LVL_DEBUG);
    end
    
    settings.default = function()
        ResetDefaults();        
    end
    
    settings.refresh = function()
        logger("Refresh called.", LVL_DEBUG);        
    end

    settings.test = settings:CreateFontString(nil, "OVERLAY");
    settings.test:SetPoint("TOPLEFT", settings, "TOPLEFT", 10, -45);
    settings.test:SetFontObject("GameFontHighlight");
    settings.test:SetText("Log level");
    settings.test:SetFont("Fonts\\FRIZQT__.TTF", 11)    

    loglevelDropdown = CreateDropDownList("BISCLogLevelDD", settings, 80, 60, -40);

    minimapCheckbox = BIS:CreateCheckBox("BISCMinimapCB", "Show Minimap Icon", settings, 70, -85, 150, 20, "Show/Hide Minimap Icon", function(self)        
        local isChecked = minimapCheckbox:GetChecked();        
        BestInSlotClassicDB.minimap.hide = (not isChecked);        
        BIS:UpdateMinimapIcon();        
    end);

    minimapPosSlider = BIS:CreateSlider("BISCMinimapPosSlider", "Minimap Icon Position", settings, 0, 360, 20, -130, function(self, newValue)
        if newValue ~= BestInSlotClassicDB.minimap.minimapPos then
            BestInSlotClassicDB.minimap.minimapPos = newValue;
            BIS:UpdateMinimapIcon();
        end
    end)

    BIS:SetValues();

    InterfaceOptions_AddCategory(settings);
end

function BIS:SetValues()    
    minimapCheckbox:SetChecked(not BestInSlotClassicDB.minimap.hide);
    minimapPosSlider:SetValue(BestInSlotClassicDB.minimap.minimapPos);
end

