-- Contains the main window for Best In Slot gears.

local window;
local visible;
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase;

function ShowManager() 
    if window == nil then
        visible = false;
        window = CreateWindow("BISManager", 1200, 600);
        dropdownRace = CreateDropDownList("Test", "Label", window, 200, 20, -15, "races", 0);
        dropdownClass = CreateDropDownList("Test", "Label", window, 200, 280, -15, "class", 0);        
        dropdownSpec = CreateDropDownList("Test", "Label", window, 200, 540, -15, "specs", 0);
        dropdownPhase = CreateDropDownList("Test", "Label", window, 200, 800, -15, "phases", 0);
    end

    if visible then
        window:Hide();
        visible = false;
    else
        window:Show();
        visible = true;
    end
end