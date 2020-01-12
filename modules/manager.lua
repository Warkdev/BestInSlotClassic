-- Contains the main window for Best In Slot gears.

local window;
local visible;

function ShowManager() 
    if window == nil then
        visible = false;
        window = CreateWindow("BISManager", 1000, 600);
    end

    if visible then
        window:Hide();
        visible = false;
    else
        window:Show();
        visible = true;
    end
end