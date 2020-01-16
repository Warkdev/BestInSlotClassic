-- Contains the main window for Best In Slot gears.

local window;
local visible;
local currentPhase = "Phase 2";
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase;
local selectedRace, selectedClass, selectedSpec, selectedPhase;

local races = {
    ["Horde"] = { "Orc", "Undead", "Tauren", "Troll" },
    ["Alliance"] = { "Human", "Gnome", "Dwarf", "Night Elf" }
};

local classes = {
    ["HUMAN"] = { ["CLASS"] = { "Warrior", "Paladin", "Rogue", "Priest", "Mage", "Warlock" }, ["ICON"] = { 130914 } },
    ["DWARF"] = { ["CLASS"] = { "Warrior", "Paladin", "Hunter", "Rogue", "Priest" }, ["ICON"] = { 130902 } },
    ["NIGHT ELF"] = { ["CLASS"] = { "Warrior", "Hunter", "Rogue", "Priest", "Druid" }, ["ICON"] = { 130915 } },
    ["GNOME"] = { ["CLASS"] = { "Warrior", "Rogue", "Mage", "Warlock" }, ["ICON"] = { 130903 } },
    ["ORC"] = { ["CLASS"] = { "Warrior", "Hunter", "Rogue", "Shaman", "Warlock" }, ["ICON"] = { 130916 } },
    ["UNDEAD"] = { ["CLASS"] = { "Warrior", "Rogue", "Priest", "Mage", "Warlock" }, ["ICON"] = { 130907 } },
    ["TAUREN"] = { ["CLASS"] = { "Warrior", "Hunter", "Shaman", "Druid" }, ["ICON"] = { 130918 } },
    ["TROLL"] = { ["CLASS"] = { "Warrior", "Hunter", "Rogue", "Priest", "Shaman", "Mage" }, ["ICON"] = { 130909 } }
};

local dataSpecs = {
    ["WARRIOR"] = { ["SPEC"] = { "Fury", "Protection"},
                    ["SPEC_ICONS"] = { 132347, 134952 }, 
                    ["ICON"] = { 135328 } },
    ["DRUID"] = {   ["SPEC"] = { "Feral Tank", "Feral DPS", "Restoration", "Balance" }, 
                    ["SPEC_ICONS"] = { 132276, 132115, 136041, 136036 },
                    ["ICON"] = { 134297 } },
    ["HUNTER"] = {  ["SPEC"] = { "Any" }, 
                    ["SPEC_ICONS"] = { 135489 },
                    ["ICON"] = { 135495 } },
    ["SHAMAN"] = {  ["SPEC"] = { "Elemental", "Enhancement", "Restoration" }, 
                    ["SPEC_ICONS"] = { 136015, 136018, 136052 },
                    ["ICON"] = { 133437 } },
    ["MAGE"] = {    ["SPEC"] = { "Any" }, 
                    ["SPEC_ICONS"] = { 132805 },
                    ["ICON"] = { 135150 } },
    ["WARLOCK"] = { ["SPEC"] = { "Any" }, 
                    ["SPEC_ICONS"] = { 136163 },
                    ["ICON"] = { 136020 } },
    ["PRIEST"] = {  ["SPEC"] = { "Hybrid", "Shadow" }, 
                    ["SPEC_ICONS"] = { 135941, 136224 },
                    ["ICON"] = { 135167 } },
    ["ROGUE"] = {   ["SPEC"] = { "Swords", "Daggers" }, 
                    ["SPEC_ICONS"] = { 135328, 135641 },
                    ["ICON"] = { 135428 } },
    ["PALADIN"] = { ["SPEC"] = { "Holy", "Protection", "Retribution" }, 
                    ["SPEC_ICONS"] = { 135920, 135893, 135873 },
                    ["ICON"] = { 132325 } }
};

local specsFileToSpecs = {
    ["WarriorArms"] = { dataSpecs.WARRIOR.SPEC[1] },
    ["WarriorFury"] = { dataSpecs.WARRIOR.SPEC[1] },
    ["WarriorProtection"] = { dataSpecs.WARRIOR.SPEC[2] },
    ["DruidFeralTank"] = { dataSpecs.DRUID.SPEC[1] },
    ["DruidFeralDPS"] = { dataSpecs.DRUID.SPEC[2] },
    ["DruidRestoration"] = { dataSpecs.DRUID.SPEC[3] },
    ["DruidBalance"] = { dataSpecs.DRUID.SPEC[4] },
    ["HunterBeastMastery"] = { dataSpecs.HUNTER.SPEC[1] },
    ["HunterMarksmanship"] = { dataSpecs.HUNTER.SPEC[1] },
    ["HunterSurvival"] = { dataSpecs.HUNTER.SPEC[1] },
    ["ShamanElemental"] = { dataSpecs.SHAMAN.SPEC[1] },
    ["ShamanEnhancement"] = { dataSpecs.SHAMAN.SPEC[2] },
    ["ShamanRestoration"] = { dataSpecs.SHAMAN.SPEC[3] },
    ["MageArcane"] = { dataSpecs.MAGE.SPEC[1] },
    ["MageFire"] = { dataSpecs.MAGE.SPEC[1] },
    ["MageFrost"] = { dataSpecs.MAGE.SPEC[1] },
    ["WarlockAffliction"] = { dataSpecs.WARLOCK.SPEC[1] },
    ["WarlockDemonology"] = { dataSpecs.WARLOCK.SPEC[1] },
    ["WarlockDestruction"] = { dataSpecs.WARLOCK.SPEC[1] },
    ["PriestHybrid"] = { dataSpecs.PRIEST.SPEC[1] },
    ["PriestShadow"] = { dataSpecs.PRIEST.SPEC[2] },
    ["RogueSwords"] = { dataSpecs.ROGUE.SPEC[1] },
    ["RogueDaggers"] = { dataSpecs.ROGUE.SPEC[2] },
    ["PaladinHoly"] = { dataSpecs.PALADIN.SPEC[1] },
    ["PaladinProtection"] = { dataSpecs.PALADIN.SPEC[2] },
    ["PaladinRetribution"] = { dataSpecs.PALADIN.SPEC[3] },
    ["Unknown"] = { "Unknown" }
}

local dropdownText = {
    ["races"] = "Select your race",
    ["class"] = "Select your class",
    ["specs"] = "Select your spec",
    ["phases"] = "Select your phase",
}

local phases = { 
    ["NAME"] = { "Phase 1", "Phase 2 - Preraid", "Phase 2", "Phase 3 - Preraid", "Phase 3", "Phase 4", "Phase 5", "Phase 6" }, 
    ["ICON"] = { 133066   , 132485             , 132486   , 134481             , 134154   , 134085   , 136152   , 134514    }
    };

local function HandleRacesDropDown(self, arg1, arg2, checked)
    if selectedRace ~= arg1 then
        selectedRace = arg1;
        log("Selected Race: "..selectedRace, DEBUG);
        UIDropDownMenu_SetText(dropdownRace, selectedRace);
        UIDropDownMenu_SetText(dropdownClass, dropdownText["class"]);
        selectedClass = nil;        
        UIDropDownMenu_SetText(dropdownSpec, dropdownText["specs"]);
        selectedSpec = nil;
    end
end

local function HandleClassDropDown(self, arg1, arg2, checked)
    if selectedClass ~= arg1 then
        selectedClass = arg1;
        log("Selected Class: "..selectedClass, DEBUG);
        UIDropDownMenu_SetText(dropdownClass, selectedClass);
        UIDropDownMenu_SetText(dropdownSpec, dropdownText["specs"]);
        selectedSpec = nil;
    end
end

local function HandleSpecDropDown(self, arg1, arg2, checked)
    if selectedSpec ~= arg1 then
        selectedSpec = arg1;
        log("Selected Spec: "..selectedSpec, DEBUG);
        UIDropDownMenu_SetText(dropdownSpec, selectedSpec);        
    end
end

local function HandlePhaseDropDown(self, arg1, arg2, checked)
    if selectedPhase ~= arg1 then
        selectedPhase = arg1;
        log("Selected Phase: "..selectedPhase, DEBUG);
        UIDropDownMenu_SetText(dropdownPhase, selectedPhase);        
    end
end

function Initialize_RacesDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    if races[faction] == nil then
        log("Error while creating the races drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(races[faction]) do
        info.text, info.arg1 = value, value;
        info.notcheckable = true;  
        info.func = HandleRacesDropDown;
        info.icon = classes[value:upper()].ICON[1];
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_ClassDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    if classes[selectedRace:upper()].CLASS == nil then
        log("Error while creating the class drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(classes[selectedRace:upper()].CLASS) do
        info.text, info.arg1 = value, value;
        info.notcheckable = true;  
        info.func = HandleClassDropDown;
        info.icon = dataSpecs[value:upper()].ICON[1];        
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_SpecsDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    
    
    if selectedClass == nil or dataSpecs[selectedClass:upper()].SPEC == nil then
        log("Error while creating the specs drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(dataSpecs[selectedClass:upper()].SPEC) do
        info.text, info.arg1 = value, value;
        info.checked = false;
        info.func = HandleSpecDropDown;        
        info.icon = dataSpecs[selectedClass:upper()].SPEC_ICONS[idx];
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_PhaseDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();

    for idx, value in ipairs(phases.NAME) do
        info.text, info.arg1 = value, value;
        info.checked = false;
        info.func = HandlePhaseDropDown;
        info.icon = phases.ICON[idx];
        UIDropDownMenu_AddButton(info);
    end
end

local dropdownInitializer = {
    ["races"] = Initialize_RacesDropDown,
    ["class"] = Initialize_ClassDropDown,
    ["specs"] = Initialize_SpecsDropDown,
    ["phases"] = Initialize_PhaseDropDown,
}

function CreateDropDownList(name, parent, width, x, y, items, defaultText)
    local dropdown = CreateFrame("Frame", name, parent, "UIDropDownMenuTemplate");    
    local text = defaultText:lower();
    dropdown:SetPoint("TOPLEFT", x, y);
    UIDropDownMenu_SetWidth(dropdown, width);

    if(items == "class") then        
        UIDropDownMenu_SetText(dropdown, text:gsub("^%l", string.upper));    
    else
        UIDropDownMenu_SetText(dropdown, defaultText);
    end
    
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
        selectedRace = race;
        selectedClass = class;        
        if spec == "Unknown" then
            selectedSpec = nil;
        else
            selectedSpec = spec;
        end        
        selectedPhase = currentPhase;
        window = CreateWindow("BISManager", 1200, 600);
        dropdownRace = CreateDropDownList("ddRaces", window, 200, 20, -15, "races", selectedRace);        
        dropdownClass = CreateDropDownList("ddClass", window, 200, 280, -15, "class", selectedClass);
        dropdownSpec = CreateDropDownList("ddSpecs", window, 200, 540, -15, "specs", specsFileToSpecs[spec][1]);
        dropdownPhase = CreateDropDownList("ddPhases", window, 200, 800, -15, "phases", selectedPhase);
    end

    if visible then
        window:Hide();
        visible = false;
    else
        window:Show();
        visible = true;
    end
end