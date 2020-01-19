-- Contains the main window for Best In Slot gears.

local window;
local visible;
local currentPhase = "Phase 2";
local currentPhaseId = "2";
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase;
local selectedRace, selectedClass, selectedSpec, selectedPhase;

local rootPaperDoll = "Interface\\PaperDoll\\";                

local characterFrames = { 
    ["NAME"] = { "Heads", "Necks", "Shoulders", "Backs", "Chests", "Wrists", "Gloves", "Belts", "Legs", "Boots", "MainRings", "OffRings", "MainTrinkets", "OffTrinkets", "MainHands", "OffHands", "Rangeds" },    
    ["ICON"] = { 
        "UI-PaperDoll-Slot-Head.PNG", "UI-PaperDoll-Slot-Neck.PNG", "UI-PaperDoll-Slot-Shoulder.PNG", "UI-PaperDoll-Slot-REar.PNG", "UI-PaperDoll-Slot-Chest.PNG",
        "UI-PaperDoll-Slot-Wrists.PNG", "UI-PaperDoll-Slot-Hands.PNG", "UI-PaperDoll-Slot-Waist.PNG", "UI-PaperDoll-Slot-Legs.PNG", "UI-PaperDoll-Slot-Feet.PNG", "UI-PaperDoll-Slot-Finger",
        "UI-PaperDoll-Slot-Finger", "UI-PaperDoll-Slot-Trinket.PNG", "UI-PaperDoll-Slot-Trinket.PNG", "UI-PaperDoll-Slot-MainHand.PNG", "UI-PaperDoll-Slot-SecondaryHand.PNG", "UI-PaperDoll-Slot-Ranged.PNG"
    }
};

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

local function ResetUI()   
    for key, value in pairs(characterFrames.NAME) do        
        for i=1, 3, 1 do            
            _G["frame"..value.."_"..i.."_ICON"]:SetTexture(rootPaperDoll..characterFrames.ICON[key]);        
            _G["frame"..value.."_"..i.."_TEXT"]:SetText("");
        end        
    end
end

local function Update()
    if selectedRace == nil or selectedClass == nil or selectedSpec == nil or selectedPhase == nil then
        -- Nothing to be updated.
        return;
    end
    local temp;

    -- Reset Icons.
    ResetUI();

    log("Searching for BIS items with the following settings Race Idx ("..selectedRace.."), Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..selectedSpec..").", DEBUG);
    local count = 0;
    
    temp = SearchBis(nil, selectedRace, selectedClass, selectedPhase, selectedSpec, nil, nil);
    
    for key, value in pairs(temp) do
        
        --[[local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
        itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, 
        isCraftingReagent = GetItemInfo(value.ItemId);]]--

        local item = Item:CreateFromItemID(value.ItemId);
        local posX = 0;
        local posY = 0;
        
        item:ContinueOnItemLoad(function()
            -- Item has been answered from the server.
            local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
                itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, 
                isCraftingReagent = GetItemInfo(value.ItemId);                                

            if value.Priority > 0 and value.Priority < 4 then                
                _G["frame"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority.."_ICON"]:SetTexture(itemIcon);
                _G["frame"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority.."_TEXT"]:SetText(itemLink);                
                _G["frame"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority]:SetScript("OnEnter", function(self)
                    local tooltip = _G["tooltip"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority];                    
                    if tooltip == nil then
                        tooltip = CreateFrame( "GameTooltip", "tooltip"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority, nil, "GameTooltipTemplate" );
                    end
                    tooltip:SetOwner(_G["frame"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority]);
                    tooltip:SetHyperlink(itemLink);
                    tooltip:SetPoint("TOPLEFT", _G["frame"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority], "TOPRIGHT", 220, -13);
                    
                    local item = BIS_ITEMS[tostring(value.ItemId)];
                    local source = item.Source;
                    tooltip:AddLine("\nThis item can be obtained: ");
                    if source == nil then
                        log("Error while generating the tooltip for the ItemId "..value.ItemId, ERROR);
                    elseif source == "Craft" then
                        tooltip:AddLine("Source: Craft");
                        tooltip:AddLine("Profession: "..PROFESSIONS[item.Info.Profession]);
                        tooltip:AddLine("Level: "..item.Info.Level);
                        tooltip:AddLine("Recipe Zone: "..item.Zone);
                        tooltip:AddLine("NPC: "..item.Info.NPC);
                    elseif source == "Loot" then
                    elseif source == "Vendor" then
                    elseif source == "Quest" then
                    end
                    
                    tooltip:Show();
                end);                
                _G["frame"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority]:SetScript("OnLeave", function(self)
                    _G["tooltip"..INVSLOT_IDX[value.InvSlotId].."s_"..value.Priority]:Hide();
                end);                
            end
        end);

        --print(itemName);
    end
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

function CreateIconFrame(name, parent, width, height, x, y, icon)    
    local frame = CreateFrame("Frame", name, parent);

    frame:SetWidth(width); -- Set these to whatever height/width is needed 
    frame:SetHeight(height); -- for your Texture

    local texture = frame:CreateTexture(name.."_ICON","BACKGROUND");    
    texture:SetTexture(icon);
    texture:SetAllPoints(frame);
    frame.texture = texture;

    frame:SetPoint("TOPLEFT", x,y);
    frame:Show();

    return frame;
end

function CreateChildIcons(suffix, parent, amount, defaultSize, startX, startY, icon, position)
    local temp = {};
    local iconSize = defaultSize / amount;
    for i=1,amount,1 do
        -- By default, the new image is going at the right.
        if position == nil then
            temp[i] = CreateIconFrame("frame"..suffix.."_"..i, parent, iconSize, iconSize, startX + defaultSize, startY - (defaultSize * (i - 1) / amount), icon);
        elseif position == "TOP" then                                    
            temp[i] = CreateIconFrame("frame"..suffix.."_"..i, parent, iconSize, iconSize, startX - defaultSize / 2, startY + defaultSize - (defaultSize * (i - 1) / amount), icon);
        else
            temp[i] = CreateIconFrame("frame"..suffix.."_"..i, parent, iconSize, iconSize, startX - iconSize, startY - (defaultSize * (i - 1) / amount), icon);
        end
    end
    return temp;
end

function CreateTextFrames(suffix, parent, amount, defaultSize, width, startX, startY, position)
    local textFrames = {};
    local iconSize = defaultSize / amount;
    
    for i=1, amount, 1 do        
        textFrames[i] = parent:CreateFontString("frame"..suffix.."_"..i.."_TEXT", "OVERLAY");
        if position == "RIGHT" then
            textFrames[i]:SetPoint("TOPLEFT", parent, "TOPLEFT", startX + iconSize + defaultSize, startY - (defaultSize * (i - 1) / amount));
        elseif position == "TOP" then            
            textFrames[i]:SetPoint("TOPLEFT", parent, "TOPLEFT", startX + iconSize - (defaultSize / 2), startY + defaultSize - (defaultSize * (i - 1) / amount));
        else
            textFrames[i]:SetPoint("TOPLEFT", parent, "TOPLEFT", startX - iconSize - 150, startY - (defaultSize * (i - 1) / amount));
        end
        textFrames[i]:SetFontObject("GameFontHighlight");        
        textFrames[i]:SetHeight(iconSize);                
    end    
    return textFrames;
end

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
        -- Main icons.
        local frameHead, frameNeck, frameShoulder, frameBack, frameChest, frameWrist;
        local frameGlove, frameBelt, frameLeg, frameBoot, frameMainRing, frameOffRing, frameMainTrinket, frameOffTrinket;
        local frameMainHand, frameOffHand, frameRanged;
        -- Child icons.
        local frameHeads, frameNecks, frameShoulders, frameBacks, frameChests, frameWrists;
        local frameGloves, frameBelts, frameLegs, frameBoots, frameMainRings, frameOffRings, frameMainTrinkets, frameOffTrinkets;
        local frameMainHands, frameOffHands, frameRangeds;
        -- Child Text.
        local textHeads, textNecks, textShoulders, textBacks, textChests, textWrists;
        local textGloves, textBelts, textLegs, textBoots, textMainRings, textOffRings, textMainTrinkets, textOffTrinkets;
        local textMainHands, textOffHands, textRangeds;
        local iconSize = 60;
        visible = false;        
        selectedRace = RACES_IDX[race];                
        selectedClass = CLASS_IDX[class:lower():gsub("^%l", string.upper)];        
        if spec == "Unknown" then
            selectedSpec = nil;
        else
            selectedSpec = spec;
        end        
        selectedPhase = currentPhaseId;
        window = CreateWindow("BISManager", 1100, 600);        
        dropdownRace = CreateDropDownList("ddRaces", window, 200, 20, -15, "races", race);        
        dropdownClass = CreateDropDownList("ddClass", window, 200, 280, -15, "class", class);
        dropdownSpec = CreateDropDownList("ddSpecs", window, 200, 540, -15, "specs", specsFileToSpecs[spec][1]);
        dropdownPhase = CreateDropDownList("ddPhases", window, 200, 800, -15, "phases", currentPhase);
        
        frameHead = CreateIconFrame("frameHead", window, iconSize, iconSize, 20, -45, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Head.PNG");
        frameHeads = CreateChildIcons("Heads", window, 3, iconSize, 20, -45, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Head.PNG");
        textHeads = CreateTextFrames("Heads", window, 3, iconSize, 300, 20, -45, "RIGHT");

        frameNeck = CreateIconFrame("frameNeck", window, iconSize, iconSize, 20, -45 - iconSize, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Neck.PNG");
        frameNecks = CreateChildIcons("Necks", window, 3, iconSize, 20, -45 - iconSize, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Neck.PNG");
        textNecks = CreateTextFrames("Necks", window, 3, iconSize, 300, 20, -45 - iconSize, "RIGHT");

        frameShoulder = CreateIconFrame("frameShoulder", window, iconSize, iconSize, 20, -45 - (iconSize * 2), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Shoulder.PNG");
        frameShoulders = CreateChildIcons("Shoulders", window, 3, iconSize, 20, -45 - (iconSize * 2), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Shoulder.PNG");
        textShoulders = CreateTextFrames("Shoulders", window, 3, iconSize, 300, 20, -45 - (iconSize * 2), "RIGHT");

        frameBack = CreateIconFrame("frameBack", window, iconSize, iconSize, 20, -45 - (iconSize * 3), "Interface\\PaperDoll\\UI-PaperDoll-Slot-REar.PNG");
        frameBacks = CreateChildIcons("Backs", window, 3, iconSize, 20, -45 - (iconSize * 3), "Interface\\PaperDoll\\UI-PaperDoll-Slot-REar.PNG");
        textBacks = CreateTextFrames("Backs", window, 3, iconSize, 300, 20, -45 - (iconSize * 3), "RIGHT");

        frameChest = CreateIconFrame("frameChest", window, iconSize, iconSize, 20, -45 - (iconSize * 4), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest.PNG");
        frameChests = CreateChildIcons("Chests", window, 3, iconSize, 20, -45 - (iconSize * 4), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Chest.PNG");
        textChests = CreateTextFrames("Chests", window, 3, iconSize, 300, 20, -45 - (iconSize * 4), "RIGHT");

        frameWrist = CreateIconFrame("frameWrist", window, iconSize, iconSize, 20, -45  - (iconSize * 7), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Wrists.PNG");
        frameWrists = CreateChildIcons("Wrists", window, 3, iconSize, 20, -45 - (iconSize * 7), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Wrists.PNG");
        textWrists = CreateTextFrames("Wrists", window, 3, iconSize, 300, 20, -45 - (iconSize * 7), "RIGHT");

        frameGlove = CreateIconFrame("frameGlove", window, iconSize, iconSize, 1000, -45, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Hands.PNG");
        frameGloves = CreateChildIcons("Gloves", window, 3, iconSize, 1000, -45, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Hands.PNG", "LEFT");
        textGloves = CreateTextFrames("Gloves", window, 3, iconSize, 300, 1000, -45, "LEFT");

        frameBelt = CreateIconFrame("frameBelt", window, iconSize, iconSize, 1000, -45 - (iconSize * 1), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Waist.PNG");
        frameBelts = CreateChildIcons("Belts", window, 3, iconSize, 1000, -45 - (iconSize * 1), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Waist.PNG", "LEFT");
        textBelts = CreateTextFrames("Belts", window, 3, iconSize, 300, 1000, -45 - (iconSize * 1), "LEFT");

        frameLeg = CreateIconFrame("frameLeg", window, iconSize, iconSize, 1000, -45 - (iconSize * 2), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Legs.PNG");
        frameLegs = CreateChildIcons("Legs", window, 3, iconSize, 1000, -45 - (iconSize * 2), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Legs.PNG", "LEFT");
        textLegs = CreateTextFrames("Legs", window, 3, iconSize, 300, 1000, -45 - (iconSize * 2), "LEFT");

        frameBoot = CreateIconFrame("frameBoot", window, iconSize, iconSize, 1000, -45 - (iconSize * 3), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Feet.PNG");
        frameBoots = CreateChildIcons("Boots", window, 3, iconSize, 1000, -45 - (iconSize * 3), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Feet.PNG", "LEFT");
        textBoots = CreateTextFrames("Boots", window, 3, iconSize, 300, 1000, -45 - (iconSize * 3), "LEFT");

        frameMainRing = CreateIconFrame("frameMainRing", window, iconSize, iconSize, 1000, -45 - (iconSize * 4), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Finger.PNG");
        frameMainRings = CreateChildIcons("MainRings", window, 3, iconSize, 1000, -45 - (iconSize * 4), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Finger.PNG", "LEFT");
        textMainRings = CreateTextFrames("MainRings", window, 3, iconSize, 300, 1000, -45 - (iconSize * 4), "LEFT");

        frameOffRing = CreateIconFrame("frameOffRing", window, iconSize, iconSize, 1000, -45 - (iconSize * 5), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Finger.PNG");
        frameOffRings = CreateChildIcons("OffRings", window, 3, iconSize, 1000, -45 - (iconSize * 5), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Finger.PNG", "LEFT");
        textOffRings = CreateTextFrames("OffRings", window, 3, iconSize, 300, 1000, -45 - (iconSize * 5), "LEFT");

        frameMainTrinket = CreateIconFrame("frameMainTrinket", window, iconSize, iconSize, 1000, -45 - (iconSize * 6), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket.PNG");
        frameMainTrinkets = CreateChildIcons("MainTrinkets", window, 3, iconSize, 1000, -45 - (iconSize * 6), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket.PNG", "LEFT");
        textMainTrinkets = CreateTextFrames("MainTrinkets", window, 3, iconSize, 300, 1000, -45 - (iconSize * 6), "LEFT");

        frameOffTrinket = CreateIconFrame("frameOffTrinket", window, iconSize, iconSize, 1000, -45 - (iconSize * 7), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket.PNG");
        frameOffTrinkets = CreateChildIcons("OffTrinkets", window, 3, iconSize, 1000, -45 - (iconSize * 7), "Interface\\PaperDoll\\UI-PaperDoll-Slot-Trinket.PNG", "LEFT");
        textOffTrinkets = CreateTextFrames("OffTrinkets", window, 3, iconSize, 300, 1000, -45 - (iconSize * 7) , "LEFT");

        frameMainHand = CreateIconFrame("frameMainHand", window, iconSize, iconSize, 550 - (iconSize * 3 / 2), -530, "Interface\\PaperDoll\\UI-PaperDoll-Slot-MainHand.PNG");
        frameMainHands = CreateChildIcons("MainHands", window, 3, iconSize, 550 - (iconSize * 3 / 2), -530, "Interface\\PaperDoll\\UI-PaperDoll-Slot-MainHand.PNG","LEFT");
        textMainHands = CreateTextFrames("MainHands", window, 3, iconSize, 300, 550 - (iconSize * 3 / 2), -530, "LEFT");

        frameOffHand = CreateIconFrame("frameOffHand", window, iconSize, iconSize, 550 - (iconSize / 2), -530, "Interface\\PaperDoll\\UI-PaperDoll-Slot-SecondaryHand.PNG");
        frameOffHands = CreateChildIcons("OffHands", window, 3, iconSize, 550 - (iconSize / 2), -530, "Interface\\PaperDoll\\UI-PaperDoll-Slot-SecondaryHand.PNG","TOP");
        textOffHands = CreateTextFrames("OffHands", window, 3, iconSize, 300, 550 - (iconSize / 2), -530, "TOP");        

        frameRanged = CreateIconFrame("frameRanged", window, iconSize, iconSize, 550 + (iconSize / 2), -530, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Ranged.PNG");
        frameRangeds = CreateChildIcons("Rangeds", window, 3, iconSize, 550 + (iconSize / 2), -530, "Interface\\PaperDoll\\UI-PaperDoll-Slot-Ranged.PNG");
        textRangeds = CreateTextFrames("Rangeds", window, 3, iconSize, 300, 550 + (iconSize / 2), -530, "RIGHT");
        
    end

    if visible then
        window:Hide();
        visible = false;
    else
        window:Show();
        visible = true;
    end
end