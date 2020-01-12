-- Registering the add-on as a category of the interface pane.
local settings;
local debugCheckbox;
local minimapCheckbox;
local minimapPosSlider;

function CreateSettingsInterface()
    settings = CreateFrame("FRAME", "BestInSlotClassicsettings", UIParent);
    settings.name = "BestInSlotClassic";

    settings.okay = function()
        if BestInSlotClassicDB.debug.enabled then
            print("Settings saved! ");
        end
    end
    
    settings.cancel = function()
        if BestInSlotClassicDB.debug.enabled then
            print("Settings denied! ");
        end
    end
    
    settings.default = function()
        ResetDefaults();        
    end
    
    settings.refresh = function()
        if BestInSlotClassicDB.debug.enabled then
            print("Refresh called.");
        end
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
    debugCheckbox:SetChecked(BestInSlotClassicDB.debug.enabled);
    minimapCheckbox:SetChecked(not BestInSlotClassicDB.minimap.hide);
    minimapPosSlider:SetValue(BestInSlotClassicDB.minimap.minimapPos);
end

