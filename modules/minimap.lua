-- This file is handling all minimap related stuff
local icon;
local launcher;

function MinimapButtonOnClick()    
    ShowManager();
end

function CreateMinimapIcon()
    launcher = LibStub("LibDataBroker-1.1"):NewDataObject("BestInSlotClassic", {
        type = "launcher",
        icon = "Interface\\Addons\\BestInSlotClassic\\assets\\logo_32x32",    
        OnClick = MinimapButtonOnClick   
    });
    
    icon = LibStub("LibDBIcon-1.0");
    icon:Register("BestInSlotClassic", launcher, BestInSlotClassicDB.minimap);
end

function UpdateMinimapIcon()    
    icon:Refresh("BestInSlotClassic", BestInSlotClassicDB.minimap);
end