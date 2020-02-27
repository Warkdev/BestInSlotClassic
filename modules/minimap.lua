-- This file is handling all minimap related stuff
local icon;
local launcher;

function MinimapButtonOnClick(self, button)    
    if button == "RightButton" then
        OpenConfigPane();
    elseif button == "LeftButton" then
        ShowManager();
    end    
end

function MinimapTooltipShow(tooltip)
    tooltip:AddLine("BestInSlot-Classic");
    tooltip:AddLine("Version: "..VERSION);
    tooltip:AddLine("Left-Click: Open the main window");
    tooltip:AddLine("Right-Click: Open the settings window");
end

function CreateMinimapIcon()
    launcher = LibStub("LibDataBroker-1.1"):NewDataObject("BestInSlotClassic", {
        type = "launcher",
        icon = "Interface\\Addons\\BestInSlotClassic\\assets\\logo_32x32",    
        OnClick = MinimapButtonOnClick,
        OnTooltipShow = MinimapTooltipShow,
    });
    
    icon = LibStub("LibDBIcon-1.0");
    icon:Register("BestInSlotClassic", launcher, BestInSlotClassicDB.minimap);
end

function UpdateMinimapIcon()    
    icon:Refresh("BestInSlotClassic", BestInSlotClassicDB.minimap);
end