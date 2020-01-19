-- Contains the main window for Best In Slot gears.

local window;
local visible;
local currentPhase = "Phase 2";
local currentPhaseId = "2";
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase;
local selectedRace, selectedClass, selectedSpec, selectedPhase;

local races = {
    ["Horde"] = { "Orc", "Undead", "Tauren", "Troll" },
    ["Alliance"] = { "Human", "Gnome", "Dwarf", "Night Elf" }
};

local classes = {
    [1] = { ["CLASS"] = { "Warrior", "Paladin", "Rogue", "Priest", "Mage", "Warlock" }, ["ICON"] = { 130914 } },
    [3] = { ["CLASS"] = { "Warrior", "Paladin", "Hunter", "Rogue", "Priest" }, ["ICON"] = { 130902 } },
    [4] = { ["CLASS"] = { "Warrior", "Hunter", "Rogue", "Priest", "Druid" }, ["ICON"] = { 130915 } },
    [7] = { ["CLASS"] = { "Warrior", "Rogue", "Mage", "Warlock" }, ["ICON"] = { 130903 } },
    [2] = { ["CLASS"] = { "Warrior", "Hunter", "Rogue", "Shaman", "Warlock" }, ["ICON"] = { 130916 } },
    [5] = { ["CLASS"] = { "Warrior", "Rogue", "Priest", "Mage", "Warlock" }, ["ICON"] = { 130907 } },
    [6] = { ["CLASS"] = { "Warrior", "Hunter", "Shaman", "Druid" }, ["ICON"] = { 130918 } },
    [8] = { ["CLASS"] = { "Warrior", "Hunter", "Rogue", "Priest", "Shaman", "Mage" }, ["ICON"] = { 130909 } }
};

local dataSpecs = {
    [1] = { ["SPEC"] = { "Fury", "Protection", "Fire Resistance"},
                    ["SPEC_ICONS"] = { 132347, 134952,  135805}, 
                    ["VALUE"] = { 1, 2, 3 },
                    ["ICON"] = { 135328 } },
    [11] = {   ["SPEC"] = { "Feral Tank", "Feral DPS", "Restoration", "Balance" },                     
                    ["SPEC_ICONS"] = { 132276, 132115, 136041, 136036 },
                    ["VALUE"] = { 1, 2, 3, 4 },
                    ["ICON"] = { 134297 } },
    [3] = {  ["SPEC"] = { "Any" },                     
                    ["SPEC_ICONS"] = { 135489 },
                    ["VALUE"] = { 1 },
                    ["ICON"] = { 135495 } },
    [7] = {  ["SPEC"] = { "Elemental", "Enhancement", "Restoration" },                     
                    ["SPEC_ICONS"] = { 136015, 136018, 136052 },
                    ["VALUE"] = { 1, 2, 3 },
                    ["ICON"] = { 133437 } },
    [8] = {    ["SPEC"] = { "Any" },                     
                    ["SPEC_ICONS"] = { 132805 },
                    ["VALUE"] = { 1 },
                    ["ICON"] = { 135150 } },
    [9] = { ["SPEC"] = { "Any" },                     
                    ["SPEC_ICONS"] = { 136163 },
                    ["VALUE"] = { 1 },
                    ["ICON"] = { 136020 } },
    [5] = {  ["SPEC"] = { "Hybrid", "Shadow" },                     
                    ["SPEC_ICONS"] = { 135941, 136224 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 135167 } },
    [4] = {   ["SPEC"] = { "Swords", "Daggers" },                     
                    ["SPEC_ICONS"] = { 135328, 135641 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 135428 } },
    [2] = { ["SPEC"] = { "Holy", "Protection", "Retribution" },                     
                    ["SPEC_ICONS"] = { 135920, 135893, 135873 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 132325 } }
};

local specsFileToSpecs = {
    ["WarriorArms"] = { dataSpecs[1].SPEC[1] },
    ["WarriorFury"] = { dataSpecs[1].SPEC[1] },
    ["WarriorProtection"] = { dataSpecs[1].SPEC[2] },
    ["DruidFeralTank"] = { dataSpecs[11].SPEC[1] },
    ["DruidFeralDPS"] = { dataSpecs[11].SPEC[2] },
    ["DruidRestoration"] = { dataSpecs[11].SPEC[3] },
    ["DruidBalance"] = { dataSpecs[11].SPEC[4] },
    ["HunterBeastMastery"] = { dataSpecs[3].SPEC[1] },
    ["HunterMarksmanship"] = { dataSpecs[3].SPEC[1] },
    ["HunterSurvival"] = { dataSpecs[3].SPEC[1] },
    ["ShamanElemental"] = { dataSpecs[7].SPEC[1] },
    ["ShamanEnhancement"] = { dataSpecs[7].SPEC[2] },
    ["ShamanRestoration"] = { dataSpecs[7].SPEC[3] },
    ["MageArcane"] = { dataSpecs[8].SPEC[1] },
    ["MageFire"] = { dataSpecs[8].SPEC[1] },
    ["MageFrost"] = { dataSpecs[8].SPEC[1] },
    ["WarlockAffliction"] = { dataSpecs[9].SPEC[1] },
    ["WarlockDemonology"] = { dataSpecs[9].SPEC[1] },
    ["WarlockDestruction"] = { dataSpecs[9].SPEC[1] },
    ["PriestHybrid"] = { dataSpecs[5].SPEC[1] },
    ["PriestShadow"] = { dataSpecs[5].SPEC[2] },
    ["RogueSwords"] = { dataSpecs[4].SPEC[1] },
    ["RogueDaggers"] = { dataSpecs[4].SPEC[2] },
    ["PaladinHoly"] = { dataSpecs[2].SPEC[1] },
    ["PaladinProtection"] = { dataSpecs[2].SPEC[2] },
    ["PaladinRetribution"] = { dataSpecs[2].SPEC[3] },
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
    ["ICON"] = { 133066   , 132485             , 132486   , 134481             , 134154   , 134085   , 136152   , 134514    },
    ["VALUE"] = { "1", "2PR", "2", "3PR", "4", "5", "6"}
    };

local function Update()
    if selectedRace == nil or selectedClass == nil or selectedSpec == nil or selectedPhase == nil then
        -- Nothing to be updated.
        return;
    end
    local temp;

    log("Searching for BIS items with the following settings Race Idx ("..selectedRace.."), Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..selectedSpec..").", DEBUG);
    local count = 0;
    
    temp = SearchBis(nil, selectedRace, selectedClass, selectedPhase, selectedSpec, nil, nil);
    
end

local function HandleRacesDropDown(self, arg1, arg2, checked)
    if selectedRace ~= arg2 then
        selectedRace = arg2;
        log("Selected Race: "..selectedRace.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownRace, arg1);
        UIDropDownMenu_SetText(dropdownClass, dropdownText["class"]);
        selectedClass = nil;        
        UIDropDownMenu_SetText(dropdownSpec, dropdownText["specs"]);
        selectedSpec = nil;        
    end
end

local function HandleClassDropDown(self, arg1, arg2, checked)
    if selectedClass ~= arg2 then
        selectedClass = arg2;
        log("Selected Class: "..selectedClass.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownClass, arg1);
        UIDropDownMenu_SetText(dropdownSpec, dropdownText["specs"]);
        selectedSpec = nil;
    end
end

local function HandleSpecDropDown(self, arg1, arg2, checked)
    if selectedSpec ~= arg2 then
        selectedSpec = arg2;
        log("Selected Spec: "..selectedSpec.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownSpec, arg1);
        Update();
    end
end

local function HandlePhaseDropDown(self, arg1, arg2, checked)
    if selectedPhase ~= arg2 then
        selectedPhase = arg2;
        log("Selected Phase: "..selectedPhase.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownPhase, arg1);
        Update();
    end
end

function Initialize_RacesDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    if races[faction] == nil then
        log("Error while creating the races drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(races[faction]) do
        info.text, info.arg1, info.arg2 = value, value, RACES_IDX[value];        
        info.func = HandleRacesDropDown;        
        info.icon = classes[RACES_IDX[value]].ICON[1];
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_ClassDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();        

    if classes[selectedRace].CLASS == nil then
        log("Error while creating the class drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(classes[selectedRace].CLASS) do
        info.text, info.arg1, info.arg2 = value, value, CLASS_IDX[value];        
        info.func = HandleClassDropDown;        
        info.icon = dataSpecs[CLASS_IDX[value]].ICON[1];        
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_SpecsDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    
        
    if selectedClass == nil or dataSpecs[selectedClass].SPEC == nil then
        log("Error while creating the specs drop down", ERROR);
        return;
    end    

    for idx, value in ipairs(dataSpecs[selectedClass].SPEC) do
        info.text, info.arg1, info.arg2 = value, value, dataSpecs[selectedClass].VALUE[idx];        
        info.func = HandleSpecDropDown;        
        info.icon = dataSpecs[selectedClass].SPEC_ICONS[idx];
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_PhaseDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();
    local disabled = false;

    for idx, value in ipairs(phases.NAME) do
        info.text, info.arg1, info.arg2 = value, value, phases.VALUE[idx];
        info.disabled = disabled;
        info.func = HandlePhaseDropDown;
        info.icon = phases.ICON[idx];
        UIDropDownMenu_AddButton(info);

        if value == currentPhase then
            disabled = true;
        end
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
        selectedRace = RACES_IDX[race];                
        selectedClass = CLASS_IDX[class:lower():gsub("^%l", string.upper)];        
        if spec == "Unknown" then
            selectedSpec = nil;
        else
            selectedSpec = spec;
        end        
        selectedPhase = currentPhaseId;
        window = CreateWindow("BISManager", 1200, 600);
        dropdownRace = CreateDropDownList("ddRaces", window, 200, 20, -15, "races", race);        
        dropdownClass = CreateDropDownList("ddClass", window, 200, 280, -15, "class", class);
        dropdownSpec = CreateDropDownList("ddSpecs", window, 200, 540, -15, "specs", specsFileToSpecs[spec][1]);
        dropdownPhase = CreateDropDownList("ddPhases", window, 200, 800, -15, "phases", currentPhase);
    end

    if visible then
        window:Hide();
        visible = false;
    else
        window:Show();
        visible = true;
    end
end