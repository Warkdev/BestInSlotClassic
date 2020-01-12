-- This file is handling all minimap related stuff
local function MinimapButtonOnClick()    
    print("OnClick");
end

function CreateMinimapIcon()
    local launcher = LibStub("LibDataBroker-1.1"):NewDataObject("BestInSlotClassic", {
        type = "launcher",
        icon = "Interface\\Addons\\BestInSlotClassic\\assets\\logo_32x32",    
        OnClick = MinimapButtonOnClick   
    });
    
    local icon = LibStub("LibDBIcon-1.0");
    icon:Register("BestInSlotClassic", launcher, BestInSlotClassicDB.minimap);
end