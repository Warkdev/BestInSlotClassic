-- Contains the main window for Best In Slot gears.

local window;
local visible;
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase;

local races = {
    ["Horde"] = { "Orc", "Undead", "Tauren", "Troll" },
    ["Alliance"] = { "Human", "Gnome", "Dwarf", "Night Elf" }
};

local classes = {
    ["Horde"] = { "Warrior", "Shaman", "Druid", "Hunter", "Mage", "Warlock", "Priest", "Rogue" },
    ["Alliance"] = { "Warrior", "Druid", "Hunter", "Mage", "Warlock", "Priest", "Rogue", "Paladin" }
};

local specs = {
    ["WARRIOR"] = { "Arms", "Fury", "Protection" },
    ["DRUID"] = { "Feral Tank", "Feral DPS", "Restoration", "Balance" },
    ["HUNTER"] = { "Any" },
    ["SHAMAN"] = { "Elemental", "Enhancement", "Restoration" },
    ["MAGE"] = { "Any" },
    ["WARLOCK"] = { "Any" },
    ["PRIEST"] = { "Hybrid", "Shadow" },
    ["ROGUE"] = { "Swords", "Daggers" },
    ["PALADIN"] = { "Holy", "Protection", "Retribution" }
};

local phases = { "Phase 1", "Phase 2 - Preraid", "Phase 2", "Phase 3 - Preraid", "Phase 3", "Phase 4", "Phase 5", "Phase 6" };

function Initialize_RacesDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    if races[faction] == nil then
        log("Error while creating the races drop down", ERROR);
        return;
    end

    for idx, value in ipairs(races[faction]) do
        info.text, info.notcheckable = value, true;
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_ClassDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    if classes[faction] == nil then
        log("Error while creating the class drop down", ERROR);
        return;
    end

    for idx, value in ipairs(classes[faction]) do
        info.text, info.checked = value, false;
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_SpecsDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    
    
    if specs[class] == nil then
        log("Error while creating the specs drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(specs[class]) do
        info.text, info.checked = value, false;
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_PhaseDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();

    for idx, value in ipairs(phases) do
        info.text, info.checked = value, false;
        UIDropDownMenu_AddButton(info);
    end
end

local dropdownInitializer = {
    ["races"] = Initialize_RacesDropDown,
    ["class"] = Initialize_ClassDropDown,
    ["specs"] = Initialize_SpecsDropDown,
    ["phases"] = Initialize_PhaseDropDown,
}

local dropdownText = {
    ["races"] = "Select your race",
    ["class"] = "Select your class",
    ["specs"] = "Select your spec",
    ["phases"] = "Select your phase",
}

function CreateDropDownList(name, parent, width, x, y, items, callback)
    local dropdown = CreateFrame("Frame", name, parent, "UIDropDownMenuTemplate");    
    dropdown:SetPoint("TOPLEFT", x, y);
    UIDropDownMenu_SetWidth(dropdown, width);
    UIDropDownMenu_SetText(dropdown, dropdownText[items]);
    UIDropDownMenu_Initialize(dropdown, dropdownInitializer[items]);

    return dropdown;
end

function ShowManager()
    -- We load player info now because it can evolve regarding talents.
    -- There's also a bug that makes the num talent tab being at 0 after addon_loaded on start.
    LoadPlayerInfo();
    PrintPlayerInfo();

    if window == nil then
        visible = false;        
        window = CreateWindow("BISManager", 1200, 600);
        dropdownRace = CreateDropDownList("ddRaces", window, 200, 20, -15, "races", 0);        
        dropdownClass = CreateDropDownList("ddClass", window, 200, 280, -15, "class", 0);        
        dropdownSpec = CreateDropDownList("ddSpecs", window, 200, 540, -15, "specs", 0);
        dropdownPhase = CreateDropDownList("ddPhases", window, 200, 800, -15, "phases", 0);
    end

    if visible then
        window:Hide();
        visible = false;
    else
        window:Show();
        visible = true;
    end
end