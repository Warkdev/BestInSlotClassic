-- Contains the main window for Best In Slot gears.

local window;
local visible;
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase, dropdownPVPRank;
local selectedRace, selectedClass, selectedSpec, selectedPhase, selectedRank;

local rootPaperDoll = "Interface\\PaperDoll\\";                

local enchantIcon = GetSpellTexture(20036);
local iconpath = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-Classes";
local iconCutoff = 6;

local characterFrames = { 
    ["NAME"] = { "Heads", "Necks", "Shoulders", "Backs", "Chests", "Shirts", "Tabards", "Wrists", "Gloves", "Belts", "Legs", "Boots", "MainRings", "OffRings", "MainTrinkets", "OffTrinkets", "MainHands", "OffHands", "Rangeds", "Bags" },    
    ["INDEX"] = { 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 9 },
    ["ICON"] = { 
        "UI-PaperDoll-Slot-Head.PNG", "UI-PaperDoll-Slot-Neck.PNG", "UI-PaperDoll-Slot-Shoulder.PNG", "UI-PaperDoll-Slot-REar.PNG", "UI-PaperDoll-Slot-Chest.PNG", "UI-PaperDoll-Slot-Shirt.PNG", "UI-PaperDoll-Slot-Tabard.PNG",
        "UI-PaperDoll-Slot-Wrists.PNG", "UI-PaperDoll-Slot-Hands.PNG", "UI-PaperDoll-Slot-Waist.PNG", "UI-PaperDoll-Slot-Legs.PNG", "UI-PaperDoll-Slot-Feet.PNG", "UI-PaperDoll-Slot-Finger.PNG",
        "UI-PaperDoll-Slot-Finger.PNG", "UI-PaperDoll-Slot-Trinket.PNG", "UI-PaperDoll-Slot-Trinket.PNG", "UI-PaperDoll-Slot-MainHand.PNG", "UI-PaperDoll-Slot-SecondaryHand.PNG", "UI-PaperDoll-Slot-Ranged.PNG", "UI-PaperDoll-Slot-Bag.PNG"
    },    
    ["FRAME_ALIGNMENT"] = {
        "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "BOTTOM", "BOTTOM", "BOTTOM", "RIGHT"
    },
    ["ICON_ALIGNMENT"] = {
        "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "LEFT", "TOP", "RIGHT", "LEFT"
    },
    ["ENCHANT"] = { true, false, true, true, true, false, false, true, true, false, true, true, false, false, false, false, true, true, true, false }
};

local races = {
    ["Horde"] = { "Orc", "Scourge", "Tauren", "Troll" },
    ["Alliance"] = { "Human", "Gnome", "Dwarf", "NightElf" }
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
    [1] = { ["SPEC"] = { "Fury", "Protection (Threat)", "Protection (Mitigation)", "Fire Resistance"},
                    ["SPEC_ICONS"] = { 132347, 136101, 134952, 135805}, 
                    ["VALUE"] = { 1, 2, 3, 4 },
                    ["ICON"] = { 135328 } },    
    [2] = { ["SPEC"] = { "Holy", "Protection", "Retribution (AP)", "Retribution (Spelladin)", "Fire Resistance (Holy)", "Fire Resistance (Protection)", "Fire Resistance (Retribution)" },
                    ["SPEC_ICONS"] = { 135920, 135893, 135873, 135959, 135805, 135805, 135805 },
                    ["VALUE"] = { 1, 2, 3, 4, 5, 6, 7 },
                    ["ICON"] = { 132325 } },
    [3] = {  ["SPEC"] = { "Any", "Fire Resistance" },                     
                    ["SPEC_ICONS"] = { 135489, 135805 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 135495 } },
    [4] = {   ["SPEC"] = { "Swords", "Daggers", "Fire Resistance" },                     
                    ["SPEC_ICONS"] = { 135328, 135641, 135805 },
                    ["VALUE"] = { 1, 2, 3 },
                    ["ICON"] = { 135428 } },
    [5] = {  ["SPEC"] = { "Holy / Discipline", "Shadow", "Fire Resistance" },
                    ["SPEC_ICONS"] = { 135941, 136224, 135805 },
                    ["VALUE"] = { 1, 2, 3 },
                    ["ICON"] = { 135167 } },        
    [7] = {  ["SPEC"] = { "Restoration", "Enhancement", "Fire Resistance (Restoration)", "Fire Resistance (Enhancement)" },
                    ["SPEC_ICONS"] = { 136052, 136018, 135805, 135805 },
                    ["VALUE"] = { 1, 2, 3, 4 },
                    ["ICON"] = { 133437 } },
    [8] = {    ["SPEC"] = { "Frost/Fire", "Zero SP", "Alternative", "Fire Resistance", "Nature Resistance", "Frost Resistance", "Shadow Resistance" },
                    ["SPEC_ICONS"] = { 135866, 132643, 134614, 135805, 136006, 135849, 136121 },
                    ["VALUE"] = { 1, 2, 3, 4, 5, 6, 7 },
                    ["ICON"] = { 135150 } },
    [9] = { ["SPEC"] = { "Any", "Fire Resistance" },
                    ["SPEC_ICONS"] = { 136163, 135805 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 136020 } },    
    [11] = {   ["SPEC"] = { "Feral Tank (Value)", "Feral Tank (Mitigation)", "Feral Tank (Threat)", "Feral DPS", "Restoration", "Balance", "Fire Resistance", "Frost Resistance", "Nature Resistance", "Shadow Resistance", "Arcane Resistance" },
                    ["SPEC_ICONS"] = { 132276, 132276, 132276, 132115, 136041, 136036, 135805, 135849, 136006, 136121, 135733 },
                    ["VALUE"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 },
                    ["ICON"] = { 134297 } }                    
};

local specsFileToSpecs = {
    ["WarriorArms"] = { dataSpecs[1].SPEC[1], dataSpecs[1].VALUE[1] },
    ["WarriorFury"] = { dataSpecs[1].SPEC[1], dataSpecs[1].VALUE[1] },
    ["WarriorProtection"] = { dataSpecs[1].SPEC[2], dataSpecs[1].VALUE[2] },
    ["DruidFeralTank"] = { dataSpecs[11].SPEC[1], dataSpecs[11].VALUE[1] },
    ["DruidFeralDPS"] = { dataSpecs[11].SPEC[4], dataSpecs[11].VALUE[4] },
    ["DruidRestoration"] = { dataSpecs[11].SPEC[5], dataSpecs[11].VALUE[5] },
    ["DruidBalance"] = { dataSpecs[11].SPEC[6], dataSpecs[11].VALUE[6] },
    ["HunterBeastMastery"] = { dataSpecs[3].SPEC[1], dataSpecs[3].VALUE[1] },
    ["HunterMarksmanship"] = { dataSpecs[3].SPEC[1], dataSpecs[3].VALUE[1] },
    ["HunterSurvival"] = { dataSpecs[3].SPEC[1], dataSpecs[3].VALUE[1] },
    ["ShamanElementalCombat"] = { dataSpecs[7].SPEC[1], dataSpecs[7].VALUE[1] },
    ["ShamanEnhancement"] = { dataSpecs[7].SPEC[2], dataSpecs[7].VALUE[2] },
    ["ShamanRestoration"] = { dataSpecs[7].SPEC[1], dataSpecs[7].VALUE[1] },
    ["MageArcane"] = { dataSpecs[8].SPEC[1], dataSpecs[8].VALUE[1] },
    ["MageFire"] = { dataSpecs[8].SPEC[1], dataSpecs[8].VALUE[1] },
    ["MageFrost"] = { dataSpecs[8].SPEC[1], dataSpecs[8].VALUE[1] },
    ["WarlockCurses"] = { dataSpecs[9].SPEC[1], dataSpecs[9].VALUE[1] },
    ["WarlockSummoning"] = { dataSpecs[9].SPEC[1], dataSpecs[9].VALUE[1] },
    ["WarlockDestruction"] = { dataSpecs[9].SPEC[1], dataSpecs[9].VALUE[1] },
    ["PriestHybrid"] = { dataSpecs[5].SPEC[1], dataSpecs[5].VALUE[1] },
    ["PriestShadow"] = { dataSpecs[5].SPEC[2], dataSpecs[5].VALUE[2] },
    ["RogueSwords"] = { dataSpecs[4].SPEC[1], dataSpecs[4].VALUE[1] },
    ["RogueDaggers"] = { dataSpecs[4].SPEC[2], dataSpecs[4].VALUE[2] },
    ["PaladinHoly"] = { dataSpecs[2].SPEC[1], dataSpecs[2].VALUE[1] },
    ["PaladinProtection"] = { dataSpecs[2].SPEC[2], dataSpecs[2].VALUE[2] },
    ["PaladinCombat"] = { dataSpecs[2].SPEC[3], dataSpecs[2].VALUE[3] },
    ["Unknown"] = { "Unknown" }
}

local dropdownText = {
    ["races"] = "Select your race",
    ["class"] = "Select your class",
    ["specs"] = "Select your spec",
    ["phases"] = "Select your phase",
}

local phases = { 
    ["NAME"] = { "Phase 1", "Phase 2", "Phase 3", "Phase 4", "Phase 5", "Phase 6" }, 
    ["ICON"] = { 133066   , 132486   ,  134154   , 134085   , 136152   , 134514   },
    ["VALUE"] = { 1       , 2        , 3        , 4         , 5        , 6        },
    ["ENABLED"] = { true , true      , true     , true      , true     , true     }
    };

local pvpranks = {
    ["Horde"] = { "Scout", "Grunt", "Sergeant", "Senior Sergeant", "First Sergeant", "Stone Guard", "Blood Guard", "Legionnare", "Centurion", "Champion", "Lieutenant General", "General", "Warlord", "High Warlord" },        
    ["Alliance"] = { "Private", "Corporal", "Sergeant", "Master Sergeant", "Sergeant Major", "Knight", "Knight-Lieutenant", "Knight-Captain", "Knight-Champion", "Lieutenant Commander", "Commander", "Marshal", "Field Marshal", "Grand Marshal" },    
    ["VALUE"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 }
}

local function ResetUI()   
    for key, value in pairs(characterFrames.NAME) do
        if characterFrames.ENCHANT[key] then
            for i=1, 2, 1 do                
                _G["frame_"..value.."_"..i.."_ENCHANT_ICON"]:SetTexture(nil);                
            end
        end
        for i=1, 3, 1 do
            _G["frame_"..value.."_"..i.."_CHECK_ICON"]:SetTexture(nil);
            _G["frame_"..value.."_"..i.."_ICON"]:SetTexture(rootPaperDoll..characterFrames.ICON[key]);            
            _G["frame"..value.."_"..i.."_TEXT"]:SetText("");
            _G["ItemFrame_"..value.."_"..i]:SetScript("OnEnter", nil);
            _G["ItemFrame_"..value.."_"..i]:SetScript("OnLeave", nil);            
        end        
    end
end

local function characterHasBag(bagName)
    for i = 1, 4 do
        if GetBagName(i) == bagName then
            return true;
        end
    end
    return false;
end

local function characterHasItem(itemId)
    local hasItem = false;    
	if IsEquippedItem(itemId) then
		hasItem = true;
	else
		for i = 0, NUM_BAG_SLOTS do
		    for z = 1, GetContainerNumSlots(i) do
		        if GetContainerItemID(i, z) == itemId then
		        	hasItem = true;
		            break
		        end
		    end
		end
	end
	return hasItem;
end

local function Update()    
    if selectedRace == nil or selectedClass == nil or selectedSpec == nil or selectedPhase == nil then
        -- Nothing to be updated.
        return;
    end
    local temp;

    -- Reset Icons.
    ResetUI();

    bis_log("Searching for BIS items with the following settings Race Idx ("..selectedRace.."), Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..selectedSpec..").", DEBUG);
    local count = 0;
    
    temp = SearchBis(faction, selectedRace, selectedClass, selectedPhase, selectedSpec, nil, checkboxTwoHands:GetChecked(), checkboxRaid:GetChecked(), checkboxWorldBoss:GetChecked(), checkboxPvp:GetChecked(), selectedRank);
    
    bis_log("Searching for BIS enchants with the following settings Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..selectedSpec..").", DEBUG);
    temp_enchant = SearchBisEnchant(selectedClass, selectedPhase, selectedSpec, nil, checkboxTwoHands:GetChecked());

    if table.getn(temp) == 0 and table.getn(temp_enchant) == 0 then
        -- Empty table.
        return;
    end

    local minIndex, maxIndex;
    local temp_slot;        
    local item;

    for i = 1, table.getn(INVSLOT_IDX), 1 do
        -- First, we set the enchantments for the given slot.        
        if(temp_enchant[i] ~= nil) then        
            for idx, value in pairs(temp_enchant[i]) do
                if idx > 2 then
                    break;
                end
                
                if BIS_ENCHANT[value.EnchantId].Source == "ITEM" then
                    local ItemId = BIS_ENCHANT[value.EnchantId].ItemId;                    
                    item = Item:CreateFromItemID(ItemId);                    
                    item:ContinueOnItemLoad(function()                        
                        local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType,
                            itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(BIS_ENCHANT[value.EnchantId].ItemId);                                         
                        _G["frame_"..INVSLOT_IDX[i].."s_"..idx.."_ENCHANT_ICON"]:SetTexture(GetItemIcon(BIS_ENCHANT[value.EnchantId].ItemId));

                        _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]:SetScript("OnMouseDown", function(self,button)                                                
                            SetItemRef(itemLink, itemLink, "LeftButton");                        
                        end);
                        _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]:SetScript("OnEnter", function(self)                            
                            BIS_TOOLTIP:SetOwner(_G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]);
                            BIS_TOOLTIP:SetPoint("TOPLEFT", _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx], "TOPRIGHT", 220, -13);
        
                            BIS_TOOLTIP:SetHyperlink(itemLink);
                        end);
                    end);
                elseif BIS_ENCHANT[value.EnchantId].Source == "SPELL" then
                    local name = GetSpellInfo(value.EnchantId);
                    local link = "|cffffffff|Henchant:" .. value.EnchantId .."|h[" .. name .."]|h|r";
                    _G["frame_"..INVSLOT_IDX[i].."s_"..idx.."_ENCHANT_ICON"]:SetTexture(GetSpellTexture(value.EnchantId));
                    _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]:SetScript("OnMouseDown", function(self,button)                                                                                                                    
                        ChatFrame1EditBox:SetText(ChatFrame1EditBox:GetText()..link);                        
                    end)  
                    _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]:SetScript("OnEnter", function(self)                        
                        BIS_TOOLTIP:SetOwner(_G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]);
                        BIS_TOOLTIP:SetPoint("TOPLEFT", _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx], "TOPRIGHT", 220, -13);    
                        BIS_TOOLTIP:SetHyperlink(link);
                    end);                    
                end
                _G["EnchantFrame_"..INVSLOT_IDX[i].."s_"..idx]:SetScript("OnLeave", function(self)                    
                    BIS_TOOLTIP:Hide();
                end);
            end
        end                

        temp_slot = i;
        minIndex = 0;
        maxIndex = 4;

        -- Ring as Trinket shares the same inventory slot list.
        if i == 12 then
            temp_slot = 11;
            minIndex = 3;
            maxIndex = 7;
        elseif i == 14 then
            temp_slot = 13;
            minIndex = 3;
            maxIndex = 7;
        end
        for idx, value in pairs(temp[temp_slot]) do                                   

            if idx > minIndex and idx < maxIndex then                
                item = Item:CreateFromItemID(value.ItemId);
                                
                _G["ItemFrame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex)].index = idx - minIndex;
                item:ContinueOnItemLoad(function()                    
                    if INVSLOT_IDX[i] == "OffTrinket" or INVSLOT_IDX[i] == "OffRing" then
                        minIndex = 3;
                        maxIndex = 7;
                    else
                        minIndex = 0;
                        maxIndex = 4;
                    end
                    bis_log(INVSLOT_IDX[i].." - MinIndex: "..minIndex.." - MaxIndex: "..maxIndex, DEBUG);
                    -- Item has been answered from the server.                                                            
                    if idx > minIndex and idx < maxIndex then
                        local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
                        itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, 
                        isCraftingReagent = GetItemInfo("item:"..value.ItemId..":0:0:0:0:0:"..value.SuffixId);

                        if characterHasItem(value.ItemId) or characterHasBag(itemName) then
                            _G["frame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex).."_CHECK_ICON"]:SetTexture("Interface\\RaidFrame\\ReadyCheck-Ready");
                        else
                            _G["frame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex).."_CHECK_ICON"]:SetTexture("Interface\\RaidFrame\\ReadyCheck-NotReady");
                        end
                        _G["frame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex).."_ICON"]:SetTexture(itemIcon);
                        _G["frame"..INVSLOT_IDX[i].."s_"..(idx - minIndex).."_TEXT"]:SetText(itemLink);                    
                        _G["ItemFrame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex)]:SetScript("OnMouseDown", function(self)
                            if itemName ~= nil then
                                SetItemRef(itemLink, itemLink, "LeftButton");
                            end
                        end)                    
                        _G["ItemFrame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex)]:SetScript("OnEnter", function(self)                                                    
                            BIS_TOOLTIP:SetOwner(_G["ItemFrame_"..INVSLOT_IDX[i].."s_"..self.index]);
                            BIS_TOOLTIP:SetPoint("TOPLEFT", _G["ItemFrame_"..INVSLOT_IDX[i].."s_"..self.index], "TOPRIGHT", 220, -13);
    
                            BIS_TOOLTIP:SetHyperlink(itemLink);
                        end);
                        _G["ItemFrame_"..INVSLOT_IDX[i].."s_"..(idx - minIndex)]:SetScript("OnLeave", function(self)
                            BIS_TOOLTIP:Hide();                                            
                        end);                
                    end
                end);
            end

            
        end
    end
end

local function HandleRacesDropDown(self, arg1, arg2, checked)
    if selectedRace ~= arg2 then
        selectedRace = arg2;
        bis_log("Selected Race: "..selectedRace.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownRace, arg1);
        UIDropDownMenu_SetText(dropdownClass, dropdownText["class"]);
        selectedClass = nil;        
        UIDropDownMenu_SetText(dropdownSpec, dropdownText["specs"]);
        selectedSpec = nil; 
        ResetUI();       
    end
end

local function HandleClassDropDown(self, arg1, arg2, checked)
    if selectedClass ~= arg2 then
        selectedClass = arg2;
        bis_log("Selected Class: "..selectedClass.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownClass, arg1);
        UIDropDownMenu_SetText(dropdownSpec, dropdownText["specs"]);
        selectedSpec = nil;
        ResetUI();
    end
end

local function HandleSpecDropDown(self, arg1, arg2, checked)
    if selectedSpec ~= arg2 then
        selectedSpec = arg2;
        bis_log("Selected Spec: "..selectedSpec.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownSpec, arg1);
        Update();
    end
end

local function HandlePhaseDropDown(self, arg1, arg2, checked)
    if selectedPhase ~= arg2 then
        selectedPhase = arg2;
        bis_log("Selected Phase: "..selectedPhase.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownPhase, arg1);
        Update();
    end
end

local function HandlePvpRankDropDown(self, arg1, arg2, checked)
    if selectedRank ~= arg2 then        
        selectedRank = arg2;
        BestInSlotClassicDB.filter.pvprank = arg2;
        bis_log("Selected Rank: "..selectedRank.." (value: "..arg1..")", DEBUG);
        UIDropDownMenu_SetText(dropdownPVPRank, arg1.."");        
        Update();
    end
end

function Initialize_RacesDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    if races[faction] == nil then
        bis_log("Error while creating the races drop down", ERROR);
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
        bis_log("Error while creating the class drop down", ERROR);
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
        bis_log("Error while creating the specs drop down", ERROR);
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

    for idx, value in ipairs(phases.NAME) do
        info.text, info.arg1, info.arg2 = value, value, phases.VALUE[idx];
        info.disabled = not(phases.ENABLED[idx]);
        info.func = HandlePhaseDropDown;
        info.icon = phases.ICON[idx];
        UIDropDownMenu_AddButton(info);
    end
end

function Initialize_PVPRanksDropDown(frame, level, menuList)
    local info = UIDropDownMenu_CreateInfo();    

    for idx, value in ipairs(pvpranks[faction]) do
        info.text, info.arg1, info.arg2 = value, value, pvpranks.VALUE[idx];
        info.func = HandlePvpRankDropDown;            
        info.icon = format("%s%02d","Interface\\PvPRankBadges\\PvPRank",idx);
        UIDropDownMenu_AddButton(info);
    end
end

local dropdownInitializer = {
    ["races"] = Initialize_RacesDropDown,
    ["class"] = Initialize_ClassDropDown,
    ["specs"] = Initialize_SpecsDropDown,
    ["phases"] = Initialize_PhaseDropDown,
    ["pvpranks"] = Initialize_PVPRanksDropDown
}

function CreateIconFrame(name, parent, width, height, x, y, icon)    
    local frame = CreateFrame("Frame", name, parent);
        
    frame:SetWidth(width); -- Set these to whatever height/width is needed 
    frame:SetHeight(height); -- for your Texture

    local texture = frame:CreateTexture(name.."_ICON","BACKGROUND");    
    texture:SetTexture(icon);
    texture:SetAllPoints(frame);
    frame.texture = texture;

    frame:SetPoint("TOPLEFT", parent, "TOPLEFT", x,y);    

    return frame;
end

function CreateTextFrame(name, parent, width, height, x, y, justify)
    local frame = parent:CreateFontString("frame"..name.."_TEXT", "OVERLAY");

    frame:SetPoint("LEFT", x, y);
    frame:SetJustifyH(justify);    
    frame:SetFontObject("GameFontHighlight");
    frame:SetWidth(width);
    frame:SetHeight(height);

    return frame;
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
        local iconSize = 60;
        local smallIcon = iconSize / 3;
        visible = false;
        selectedRace = RACES_IDX[race];
        selectedClass = CLASS_IDX[class:lower():gsub("^%l", string.upper)];        
        if spec == "Unknown" then
            selectedSpec = nil;
        else
            selectedSpec = specsFileToSpecs[spec][2];
        end        
        selectedPhase = bis_currentPhaseId;
        if BestInSlotClassicDB.filter.pvprank == nil then
            if pvpRank == 0 then
                selectedRank = 1;
            else
                selectedRank = pvpRank - 4;
            end
        else
            selectedRank = BestInSlotClassicDB.filter.pvprank;
        end        
        window = CreateWindow("BISManager", 1100, 750);        
        window.childFrame = {};
        window.enchantFrame = {};

        BIS_TOOLTIP = BIS_CreateGameTooltip("BIS_TOOLTIP", window);

        dropdownRace = CreateDropDownList("ddRaces", window, 200, 20, -15, "races", race);        
        dropdownClass = CreateDropDownList("ddClass", window, 200, 280, -15, "class", class);
        dropdownSpec = CreateDropDownList("ddSpecs", window, 200, 540, -15, "specs", specsFileToSpecs[spec][1]);
        dropdownPhase = CreateDropDownList("ddPhases", window, 200, 800, -15, "phases", bis_currentPhase);
        dropdownPVPRank = CreateDropDownList("ddRanks", window, 200, 450, -140, "pvpranks", pvpranks[faction][selectedRank]);
                
        checkboxRaid = CreateCheckBox("cbRaid", "Raid", window, 450, -50, "Include raid items", function(self)            
            BestInSlotClassicDB.filter.raid = checkboxRaid:GetChecked();
            Update();
        end);
        checkboxWorldBoss = CreateCheckBox("cbWorldBoss", "World Boss", window, 450, -70, "Include World Boss items", function(self)                        
            BestInSlotClassicDB.filter.worldboss = checkboxWorldBoss:GetChecked();
            Update();            
        end);
        checkboxTwoHands = CreateCheckBox("cbTwoHands", "Two-Hands", window, 450, -90, "Show 2-hands weapons instead of 1-hand", function(self)
            BestInSlotClassicDB.filter.twohands = checkboxTwoHands:GetChecked();
            Update();
        end);
        checkboxPvp = CreateCheckBox("cbPvp", "PVP", window, 450, -110, "Include PVP items", function(self)
            BestInSlotClassicDB.filter.pvp = checkboxPvp:GetChecked();
            if(checkboxPvp:GetChecked()) then
                UIDropDownMenu_EnableDropDown(dropdownPVPRank);
            else
                UIDropDownMenu_DisableDropDown(dropdownPVPRank);
            end
            Update();
        end);

        checkboxRaid:SetChecked(BestInSlotClassicDB.filter.raid);
        checkboxWorldBoss:SetChecked(BestInSlotClassicDB.filter.worldboss);
        checkboxTwoHands:SetChecked(BestInSlotClassicDB.filter.twohands);
        checkboxPvp:SetChecked(BestInSlotClassicDB.filter.pvp);
        if(checkboxPvp:GetChecked()) then
            UIDropDownMenu_EnableDropDown(dropdownPVPRank);
        else
            UIDropDownMenu_DisableDropDown(dropdownPVPRank);
        end

        local startX, startY;
        local offsetX, offsetY;
        local checkOffsetX, checkOffsetY;
        local iconOffsetX, iconOffsetY;
        local textOffsetX, textOffsetY, textJustify;
        for i = 1, table.getn(characterFrames.NAME), 1 do            
            window.childFrame[i] = {};
            window.enchantFrame[i] = {};
            if characterFrames.FRAME_ALIGNMENT[i] == "LEFT" then
                startX = 20;
                startY = -45 - ((iconSize + 10) * (characterFrames.INDEX[i] - 1));                
            elseif characterFrames.FRAME_ALIGNMENT[i] == "RIGHT" then
                startX = 1000;
                startY = -45 - ((iconSize + 10) * (characterFrames.INDEX[i] - 1));      
            else            
                startX = 550 - ((iconSize) * 3 / 2) + iconSize * (characterFrames.INDEX[i] - 1);
                startY = -680;                
            end
            
            CreateIconFrame("IconFrame_"..characterFrames.NAME[i], window, iconSize, iconSize, startX, startY, rootPaperDoll..characterFrames.ICON[i]);                                
            
            if characterFrames.ENCHANT[i] then
                for j = 1, 2 do                    
                    window.enchantFrame[i][j] = CreateFrame("Frame", "EnchantFrame_"..characterFrames.NAME[i].."_"..j, window);                    
                    window.enchantFrame[i][j]:SetSize(17,17);                    
                    if characterFrames.ICON_ALIGNMENT[i] == "RIGHT" then
                        offsetX = iconSize - smallIcon;
                        offsetY = (iconSize - smallIcon) * (j - 1);
                    elseif characterFrames.ICON_ALIGNMENT[i] == "LEFT" then
                        offsetX = 0;
                        offsetY = (iconSize - smallIcon) * (j - 1);
                    else                          
                        offsetX = (iconSize - smallIcon) * (j - 1);
                        offsetY = 0;
                    end
                    window.enchantFrame[i][j]:SetPoint("TOPLEFT", window, "TOPLEFT", startX + offsetX, startY - offsetY);
                    CreateIconFrame("frame_"..characterFrames.NAME[i].."_"..j.."_ENCHANT", window.enchantFrame[i][j], smallIcon, smallIcon, 0, 0, nil);                    
                end
            end

            for j = 1, 3, 1 do                
                window.childFrame[i][j] = CreateFrame("Frame", "ItemFrame_"..characterFrames.NAME[i].."_"..j, window);                
                window.childFrame[i][j]:SetSize(200, 17);

                if characterFrames.ICON_ALIGNMENT[i] == "RIGHT" then                    
                    offsetX = iconSize;
                    offsetY = - (smallIcon * (j - 1));
                    checkOffsetX = 0;
                    checkOffsetY = 0;
                    iconOffsetX = smallIcon;
                    iconOffsetY = 0;
                    textOffsetX = smallIcon + smallIcon;
                    textOffsetY = 0;
                    textJustify = "LEFT";
                elseif characterFrames.ICON_ALIGNMENT[i] == "LEFT" then                                        
                    offsetX = -200;
                    offsetY = - (smallIcon * (j - 1));
                    checkOffsetX = 200 - smallIcon;
                    checkOffsetY = 0;
                    iconOffsetX = 200 - smallIcon - smallIcon;
                    iconOffsetY = 0;
                    textOffsetX = -smallIcon;
                    textOffsetY = 0;
                    textJustify = "RIGHT";
                else                                                    
                    offsetX = smallIcon - (iconSize);
                    offsetY = iconSize - (iconSize * (j - 1) / 3);
                    checkOffsetX = 0;
                    checkOffsetY = 0
                    iconOffsetX = smallIcon;
                    iconOffsetY = 0;
                    textOffsetX = smallIcon + smallIcon;
                    textOffsetY = 0;
                    textJustify = "LEFT";
                end                                
                window.childFrame[i][j]:SetPoint("TOPLEFT", window, "TOPLEFT", startX + offsetX, startY + offsetY);
                CreateIconFrame("frame_"..characterFrames.NAME[i].."_"..j.."_CHECK", window.childFrame[i][j], smallIcon, smallIcon, checkOffsetX, checkOffsetY, nil);
                CreateIconFrame("frame_"..characterFrames.NAME[i].."_"..j, window.childFrame[i][j], smallIcon, smallIcon, iconOffsetX, iconOffsetY, rootPaperDoll..characterFrames.ICON[i]);
                CreateTextFrame(characterFrames.NAME[i].."_"..j, window.childFrame[i][j], 180, smallIcon, textOffsetX, textOffsetY, textJustify);                                
            end            

        end        
    end

    if visible then
        window:Hide();
        visible = false;
    else
        Update();
        window:Show();
        visible = true;
    end
end