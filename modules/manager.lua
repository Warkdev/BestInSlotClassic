-- Contains the main window for Best In Slot gears.

local window;
local visible;
local dropdownRace, dropdownClass, dropdownSpec, dropdownPhase;
local selectedRace, selectedClass, selectedSpec, selectedPhase, selectedRank, selectedMagicResist;
local pvp, twoHands, worldBoss, raid;

local rootPaperDoll = "Interface\\PaperDoll\\";                

local iconRacePath = "Interface\\Glues\\CHARACTERCREATE\\UI-CharacterCreate-Races";
local iconClassPath = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-BIS_classes";
local iconCutoff = 6;
local iconAlliance = 132486;
local iconHorde = 132485;
local iconTwoHands_Swords = 135360;
local iconTwoHands_Staff = 135226;

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

local magicResistances = {
    ["NAME"] = { RESISTANCE_TYPE0, RESISTANCE_TYPE2 , RESISTANCE_TYPE3 , RESISTANCE_TYPE5 , RESISTANCE_TYPE4 , RESISTANCE_TYPE6 },
    ["LABEL"] = { RESISTANCE0_NAME , RESISTANCE2_NAME , RESISTANCE3_NAME , RESISTANCE5_NAME , RESISTANCE4_NAME, RESISTANCE6_NAME },
    ["ID"] = { 2, 3, 4, 6, 5, 7 }
}

BIS_races = {
    ["Horde"] = { 2, 5, 6, 8 },
    ["Alliance"] = { 1, 7, 3, 4 }
};

BIS_classes = {
    [1] = { ["CLASS"] = { 1, 2, 4, 5, 8, 9 }, ["ICON"] = { 130914 }, ["TEXT_COORD"] = { { 0/256, 64/256, 0/256, 64/256 }, { 0/256, 64/256, 128/256, 192/256 } } },
    [2] = { ["CLASS"] = { 1, 3, 4, 7, 9 }, ["ICON"] = { 130916 }, ["TEXT_COORD"] = { { 192/256, 256/256, 64/256, 128/256 }, { 192/256, 256/256, 192/256, 256/256 } } },
    [3] = { ["CLASS"] = { 1, 2, 3, 4, 5 }, ["ICON"] = { 130902 }, ["TEXT_COORD"] = { { 64/256, 128/256, 0/256, 64/256 }, { 64/256, 128/256, 128/256, 192/256 } } },
    [4] = { ["CLASS"] = { 1, 3, 4, 5, 11 }, ["ICON"] = { 130915 }, ["TEXT_COORD"] = { { 192/256, 256/256, 0/256, 64/256 }, { 192/256, 256/256, 128/256, 192/256 } } },    
    [5] = { ["CLASS"] = { 1, 4, 5, 8, 9 }, ["ICON"] = { 130907 }, ["TEXT_COORD"] = { { 64/256, 128/256, 64/256, 128/256 }, { 64/256, 128/256, 192/256, 256/256 } } },
    [6] = { ["CLASS"] = { 1, 3, 7, 11 }, ["ICON"] = { 130918 }, ["TEXT_COORD"] = { { 0/256, 64/256, 64/256, 128/256 }, { 0/256, 64/256, 192/256, 256/256 } } },
    [7] = { ["CLASS"] = { 1, 4, 8, 9 }, ["ICON"] = { 130903 }, ["TEXT_COORD"] = { { 128/256, 192/256, 0/256, 64/256 }, { 128/256, 192/256, 128/256, 192/256 } } },    
    [8] = { ["CLASS"] = { 1, 3, 4, 5, 7, 8 }, ["ICON"] = { 130909 }, ["TEXT_COORD"] = { { 128/256, 192/256, 64/256, 128/256 }, { 128/256, 192/256, 192/256, 256/256 } } }
};

BIS_dataSpecs = {
    [1] = { ["SPEC"] = { "Fury", "Protection (Threat)", "Protection (Mitigation)" },
                    ["SPEC_ICONS"] = { 132347, 136101, 134952 }, 
                    ["VALUE"] = { 1, 2, 3 },
                    ["ICON"] = { 135328 },
                    ["MAGIC_RESISTANCE"] = { { 1, 4, 5, nil, nil, nil }, { 2, 4, 5, nil, nil, nil }, { 3, 4, 5, nil, nil, nil } },
                    ["WEAPON_ICONS"] = { { 12940, 19364 }, { 19019, nil }, { 19019, nil } }
                },                    
    [2] = { ["SPEC"] = { "Holy", "Protection", "Retribution (AP)", "Retribution (Spelladin)" },
                    ["SPEC_ICONS"] = { 135920, 135893, 135873, 135959 },
                    ["VALUE"] = { 1, 2, 3, 4 },
                    ["ICON"] = { 132325 },
                    ["MAGIC_RESISTANCE"] = { { 1, 5, 8, nil, nil, nil }, { 2, 6, 8, nil, nil, nil }, { 3, 7, 8, nil, nil, nil }, { 4, 7, 8, nil, nil, nil } },
                    ["WEAPON_ICONS"] = { { 19360, nil }, { 19360, nil }, { nil, 19364 }, { 19019, 19169 } }
                 },
    [3] = {  ["SPEC"] = { "Normal", "Melee Weave" },                     
                    ["SPEC_ICONS"] = { 135489, 132215 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 135495 },
                    ["MAGIC_RESISTANCE"] = { { 1, 5, 3, nil, 4, nil }, { 2, 5, 3, nil, 4, nil } },
                    ["WEAPON_ICONS"] = { { 18805, 18520 }, { 18805, 18520 } }
                },
    [4] = {   ["SPEC"] = { "Swords", "Daggers" },                     
                    ["SPEC_ICONS"] = { 135328, 135641 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 135428 },
                    ["MAGIC_RESISTANCE"] = { { 1, 3, nil, nil, nil, nil }, { 2, 3, nil, nil, nil, nil } },
                    ["WEAPON_ICONS"] = { { 19352, nil }, { 19346, nil } }
                 },
    [5] = {  ["SPEC"] = { "Holy / Discipline", "Shadow" },
                    ["SPEC_ICONS"] = { 135941, 136224 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 135167 },
                    ["MAGIC_RESISTANCE"] = { { 1, 3, nil, nil, nil, nil }, { 2, 3, nil, nil, nil, nil } },
                    ["WEAPON_ICONS"] = { { 19360, 18608 }, { 19360, 18609 } }
                 },        
    [7] = {  ["SPEC"] = { "Restoration", "Enhancement" },
                    ["SPEC_ICONS"] = { 136052, 136018 },
                    ["VALUE"] = { 1, 2 },
                    ["ICON"] = { 133437 },
                    ["MAGIC_RESISTANCE"] = { { 1, 3, nil, nil, nil, nil }, { 2, 4, nil, nil, nil, nil } },
                    ["WEAPON_ICONS"] = { { 19360, 19356 }, { nil, 19364 } }
                },
    [8] = {    ["SPEC"] = { "Frost/Fire", "Zero SP", "Alternative" },
                    ["SPEC_ICONS"] = { 135866, 132643, 134614 },
                    ["VALUE"] = { 1, 2, 3 },
                    ["ICON"] = { 135150 },
                    ["MAGIC_RESISTANCE"] = { { 1, 4, 5, 7, 6, nil }, { 2, 4, 5, 7, 6, nil }, { 3, 4, 5, 7, 6, nil } },
                    ["WEAPON_ICONS"] = { { 17103, 19356 }, { 17103, 19356 }, { 17103, 19356 } }
                 },
    [9] = { ["SPEC"] = { "Any" },
                    ["SPEC_ICONS"] = { 136163 },
                    ["VALUE"] = { 1 },
                    ["ICON"] = { 136020 },
                    ["MAGIC_RESISTANCE"] = { { 1, 2, nil, nil, nil, nil } },
                    ["WEAPON_ICONS"] = { { 17103, 19356 } }
                 },    
    [11] = {   ["SPEC"] = { "Feral Tank (Value)", "Feral Tank (Mitigation)", "Feral Tank (Threat)", "Feral DPS", "Restoration", "Balance" },
                    ["SPEC_ICONS"] = { 132276, 132276, 132276, 132115, 136041, 136036 },
                    ["VALUE"] = { 1, 2, 3, 4, 5, 6 },
                    ["ICON"] = { 134297 },
                    ["MAGIC_RESISTANCE"] = { { 1, 7, 9, 10, 8, 11 }, { 2, 7, 9, 10, 8, 11 }, { 3, 7, 9, 10, 8, 11 }, { 4, 7, 9, 10, 8, 11 }, { 6, 7, 9, 10, 8, 11 }, { 6, 7, 9, 10, 8, 11 } },
                    ["WEAPON_ICONS"] = { { 19335, 9449 }, { 19335, 9449 }, { 19335, 9449 }, { 18805, 9449 }, { 19360, 19356 }, { 19360, 19356 } }
                 }                    
};

BIS_specsFileToSpecs = {
    ["WarriorArms"] = { BIS_dataSpecs[1].SPEC[1], BIS_dataSpecs[1].VALUE[1] },
    ["WarriorFury"] = { BIS_dataSpecs[1].SPEC[1], BIS_dataSpecs[1].VALUE[1] },
    ["WarriorProtection"] = { BIS_dataSpecs[1].SPEC[2], BIS_dataSpecs[1].VALUE[3] },
    ["WarriorFuryProtection"] = { BIS_dataSpecs[1].SPEC[2], BIS_dataSpecs[1].VALUE[2] },
    ["DruidFeralTank"] = { BIS_dataSpecs[11].SPEC[1], BIS_dataSpecs[11].VALUE[1] },
    ["DruidFeralDPS"] = { BIS_dataSpecs[11].SPEC[4], BIS_dataSpecs[11].VALUE[4] },
    ["DruidRestoration"] = { BIS_dataSpecs[11].SPEC[5], BIS_dataSpecs[11].VALUE[5] },
    ["DruidBalance"] = { BIS_dataSpecs[11].SPEC[6], BIS_dataSpecs[11].VALUE[6] },
    ["HunterBeastMastery"] = { BIS_dataSpecs[3].SPEC[1], BIS_dataSpecs[3].VALUE[1] },
    ["HunterMarksmanship"] = { BIS_dataSpecs[3].SPEC[1], BIS_dataSpecs[3].VALUE[1] },
    ["HunterSurvival"] = { BIS_dataSpecs[3].SPEC[1], BIS_dataSpecs[3].VALUE[1] },
    ["ShamanElementalCombat"] = { BIS_dataSpecs[7].SPEC[1], BIS_dataSpecs[7].VALUE[1] },
    ["ShamanEnhancement"] = { BIS_dataSpecs[7].SPEC[2], BIS_dataSpecs[7].VALUE[2] },
    ["ShamanRestoration"] = { BIS_dataSpecs[7].SPEC[1], BIS_dataSpecs[7].VALUE[1] },
    ["MageArcane"] = { BIS_dataSpecs[8].SPEC[1], BIS_dataSpecs[8].VALUE[1] },
    ["MageFire"] = { BIS_dataSpecs[8].SPEC[1], BIS_dataSpecs[8].VALUE[1] },
    ["MageFrost"] = { BIS_dataSpecs[8].SPEC[1], BIS_dataSpecs[8].VALUE[1] },
    ["WarlockCurses"] = { BIS_dataSpecs[9].SPEC[1], BIS_dataSpecs[9].VALUE[1] },
    ["WarlockSummoning"] = { BIS_dataSpecs[9].SPEC[1], BIS_dataSpecs[9].VALUE[1] },
    ["WarlockDestruction"] = { BIS_dataSpecs[9].SPEC[1], BIS_dataSpecs[9].VALUE[1] },
    ["PriestHybrid"] = { BIS_dataSpecs[5].SPEC[1], BIS_dataSpecs[5].VALUE[1] },
    ["PriestShadow"] = { BIS_dataSpecs[5].SPEC[2], BIS_dataSpecs[5].VALUE[2] },
    ["RogueSwords"] = { BIS_dataSpecs[4].SPEC[1], BIS_dataSpecs[4].VALUE[1] },
    ["RogueDaggers"] = { BIS_dataSpecs[4].SPEC[2], BIS_dataSpecs[4].VALUE[2] },
    ["PaladinHoly"] = { BIS_dataSpecs[2].SPEC[1], BIS_dataSpecs[2].VALUE[1] },
    ["PaladinProtection"] = { BIS_dataSpecs[2].SPEC[2], BIS_dataSpecs[2].VALUE[2] },
    ["PaladinCombat"] = { BIS_dataSpecs[2].SPEC[3], BIS_dataSpecs[2].VALUE[3] },
    ["Unknown"] = { "Unknown" }
};

local phases = { 
    ["NAME"] = { "Phase 1", "Phase 2 ("..PLAYER_V_PLAYER..")", "Phase 3 (BWL)", "Phase 4 ("..DUNGEON_FLOOR_ZULGURUB1 ..")", "Phase 5 (AQ)", "Phase 6 (Naxx)" }, 
    ["ICON"] = { 133066   , 132486   ,  134154   , 134085   , 136152   , 134514   },
    ["VALUE"] = { 1       , 2        , 3        , 4         , 5        , 6        },
    ["ENABLED"] = { true , true      , true     , true      , true     , true     }
    };

local pvpranks = { 7, 8, 11, 12, 14, 16, 17, 18 };

local function ResetUI()    
    local oneHandIcon, twoHandsIcon;

    for idx, phase in ipairs(phases.NAME) do        
        _G["frame_PHASE_"..phases.VALUE[idx].."_ICON"]:SetDesaturated(selectedPhase ~= phases.VALUE[idx]);
    end

    for key, value in pairs(characterFrames.NAME) do
        if characterFrames.ENCHANT[key] then
            for i=1, 2, 1 do                
                _G["frame_"..value.."_"..i.."_ENCHANT_ICON"]:SetTexture(nil);                
                _G["EnchantFrame_"..value.."_"..i]:SetScript("OnEnter", nil);
                _G["EnchantFrame_"..value.."_"..i]:SetScript("OnLeave", nil);
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
    
    for i, race in ipairs(BIS_races[faction]) do                
        if selectedRace == tonumber(race) then
            _G["frame_"..race.."_ICON"]:SetDesaturated(false);
        else
            _G["frame_"..race.."_ICON"]:SetDesaturated(true);
        end
        for j, class in ipairs(BIS_classes[race].CLASS) do
            if selectedRace == race then
                _G["frame_"..race.."_"..class]:Show();
                if selectedClass == class then
                    _G["frame_"..race.."_"..class.."_ICON"]:SetDesaturated(false);                    
                else
                    _G["frame_"..race.."_"..class.."_ICON"]:SetDesaturated(true);                    
                end                
            else
                _G["frame_"..race.."_"..class]:Hide();
            end
            for k, spec in ipairs(BIS_dataSpecs[class].SPEC) do
                if selectedClass == class then                                        
                    _G["frame_"..race.."_"..class.."_"..BIS_dataSpecs[class].VALUE[k]]:Show();
                    if selectedSpec == BIS_dataSpecs[class].VALUE[k] then
                        _G["frame_"..race.."_"..class.."_"..BIS_dataSpecs[class].VALUE[k].."_ICON"]:SetDesaturated(false);
                    else
                        _G["frame_"..race.."_"..class.."_"..BIS_dataSpecs[class].VALUE[k].."_ICON"]:SetDesaturated(true);
                    end
                else
                    _G["frame_"..race.."_"..class.."_"..BIS_dataSpecs[class].VALUE[k]]:Hide();
                end
            end            
        end
    end

    if selectedSpec ~= nil then
        for key, value in pairs(magicResistances.NAME) do            
            if BIS_dataSpecs[selectedClass].MAGIC_RESISTANCE[selectedSpec][key] == nil then                
                _G["frame_MAGIC_"..key]:Hide();
            else                
                _G["frame_MAGIC_"..key]:Show();
            end
        end
        _G["frame_PVP"]:Show();
        _G["frame_WORLD_BOSS"]:Show();
        _G["frame_SOULBOUND"]:Show();
        if raid then
            _G["frame_RAID"]:Show();
            _G["frame_DUNGEON"]:Hide();
        else
            _G["frame_RAID"]:Hide();
            _G["frame_DUNGEON"]:Show();
        end        

        _G["frame_PVP_ICON"]:SetDesaturated(not pvp);
        _G["frame_WORLD_BOSS_ICON"]:SetDesaturated(not worldBoss);
        _G["frame_SOULBOUND_ICON"]:SetDesaturated(not BestInSlotClassicDB.filter.soulboundBis);
        if pvp then            
            for idx, value in pairs(pvpranks) do                    
                _G["frame_PVP_RANK_"..value]:Show();
                if pvpranks[idx] == selectedRank then
                    _G["frame_PVP_RANK_"..value.."_ICON"]:SetDesaturated(false);
                else
                    _G["frame_PVP_RANK_"..value.."_ICON"]:SetDesaturated(true);
                end
            end
        else
            for idx, value in pairs(pvpranks) do                    
                _G["frame_PVP_RANK_"..value]:Hide();
            end
        end                
        if twoHands then
            _G["frame_TWO_HANDS"]:Show();
            _G["frame_ONE_HAND"]:Hide();
        else
            _G["frame_ONE_HAND"]:Show();
            _G["frame_TWO_HANDS"]:Hide();
        end

        oneHandIcon = BIS_dataSpecs[selectedClass].WEAPON_ICONS[selectedSpec][1];
        twoHandsIcon = BIS_dataSpecs[selectedClass].WEAPON_ICONS[selectedSpec][2];

        if oneHandIcon == nil then
            _G["frame_TWO_HANDS"]:Show();
            _G["frame_ONE_HAND"]:Hide();
            BestInSlotClassicDB.filter.twohands = true;
            twoHands = true;
        elseif twoHandsIcon == nil then
            _G["frame_TWO_HANDS"]:Hide();
            _G["frame_ONE_HAND"]:Show();
            BestInSlotClassicDB.filter.twohands = false;
            twoHands = false;
        end

        BIS:UpdateIcon("frame_ONE_HAND", GetItemIcon(oneHandIcon), nil);
        BIS:UpdateIcon("frame_TWO_HANDS", GetItemIcon(twoHandsIcon), nil);

        for idx, value in pairs(magicResistances.NAME) do
            if selectedMagicResist == idx then                
                _G["frame_MAGIC_"..idx.."_ICON"]:SetDesaturated(false);        
            else
                _G["frame_MAGIC_"..idx.."_ICON"]:SetDesaturated(true);        
            end                    
        end
    else
        for key, value in pairs(magicResistances.NAME) do                        
            _G["frame_MAGIC_"..key]:Hide();            
        end
        _G["frame_PVP"]:Hide();
        _G["frame_WORLD_BOSS"]:Hide();
        _G["frame_RAID"]:Hide();
        _G["frame_DUNGEON"]:Hide();
        _G["frame_ONE_HAND"]:Hide();
        _G["frame_TWO_HANDS"]:Hide();
        _G["frame_SOULBOUND"]:Hide();
        for idx, value in pairs(pvpranks) do                    
            _G["frame_PVP_RANK_"..pvpranks[idx]]:Hide();
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
    -- Reset Icons.
    ResetUI();

    if selectedRace == nil or selectedClass == nil or selectedSpec == nil or selectedPhase == nil or selectedMagicResist == nil then
        -- Nothing to be updated.
        return;
    end
    local temp;    
    
    local count = 0;
    
    if selectedMagicResist == 1 then        
        BIS:logmsg("Searching for BIS items with the following settings Race Idx ("..selectedRace.."), Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..selectedSpec..").", LVL_DEBUG);
        temp = BIS:SearchBis(faction, selectedRace, selectedClass, selectedPhase, selectedSpec, nil, twoHands, raid, worldBoss, pvp, selectedRank - 4, nil);
        BIS:logmsg("Searching for BIS enchants with the following settings Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..selectedSpec..").", LVL_DEBUG);
        temp_enchant = BIS:SearchBisEnchant(selectedClass, selectedPhase, selectedSpec, nil, raid, twoHands);
    else        
        BIS:logmsg("Searching for BIS items with the following settings Race Idx ("..selectedRace.."), Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..BIS_dataSpecs[selectedClass].MAGIC_RESISTANCE[selectedSpec][selectedMagicResist]..").", LVL_DEBUG);
        temp = BIS:SearchBis(faction, selectedRace, selectedClass, selectedPhase, BIS_dataSpecs[selectedClass].MAGIC_RESISTANCE[selectedSpec][selectedMagicResist], nil, twoHands, raid, worldBoss, pvp, selectedRank - 4, nil);
        BIS:logmsg("Searching for BIS enchants with the following settings Class Idx ("..selectedClass.."), Phase Idx ("..selectedPhase.."), Spec Idx ("..BIS_dataSpecs[selectedClass].MAGIC_RESISTANCE[selectedSpec][selectedMagicResist]..").", LVL_DEBUG);
        temp_enchant = BIS:SearchBisEnchant(selectedClass, selectedPhase, BIS_dataSpecs[selectedClass].MAGIC_RESISTANCE[selectedSpec][selectedMagicResist], nil, raid, twoHands);
    end
    
    

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
        if temp[temp_slot] ~= nil then
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
                        BIS:logmsg(INVSLOT_IDX[i].." - MinIndex: "..minIndex.." - MaxIndex: "..maxIndex, LVL_DEBUG);
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
end

local function HandlePhasesIcon(self)
    local phase = tonumber(self:GetName():match("[^_]+_[^_]+_([^_]+)"));
    if selectedPhase == phase then
        return;
    end

    selectedPhase = phase;
    Update();
end

local function HandleRacesIcon(self)    
    local raceId = tonumber(self:GetName():match("[^_]+_([^_]+)"));    
    if selectedRace == raceId then
        return;
    end    
    selectedRace = raceId;
    selectedClass = nil;
    selectedSpec = nil;
    selectedMagicResist = 1;    
    Update();
end

local function HandleClassIcon(self)
    local classId = tonumber(self:GetName():match("[^_]+_[^_]+_([^_]+)"));
    if selectedClass == classId then
        return;
    end
    selectedClass = classId;
    selectedSpec = nil;
    selectedMagicResist = 1;
    Update();
end

local function HandleSpecIcon(self)
    local specName = tonumber(self:GetName():match("[^_]+_[^_]+_[^_]+_([^_]+)"));
    if selectedSpec == specName then
        return;
    end
    selectedSpec = specName;
    selectedMagicResist = 1;
    Update();
end

local function HandlePvPIcon(self)    
    pvp = not pvp;
    BestInSlotClassicDB.filter.pvp = pvp;    
    Update();    
end

local function HandleRaidIcon(self)
    raid = not raid;
    BestInSlotClassicDB.filter.raid = raid;
    Update();
end

local function HandleTwoHandsIcon(self)    
    twoHands = not twoHands;
    BestInSlotClassicDB.filter.twohands = twoHands;
    Update();
end

local function HandleWorldBossIcon(self)
    worldBoss = not worldBoss;
    BestInSlotClassicDB.filter.worldboss = worldBoss;    
    Update();
end

local function HandleSoulboundIcon(self)
    BestInSlotClassicDB.filter.soulboundBis = not BestInSlotClassicDB.filter.soulboundBis;
    Update();
end

local function HandleMagicIcon(self)
    local magicResist = tonumber(self:GetName():match("[^_]+_[^_]+_([^_]+)"));    
    if magicResist == selectedMagicResist then
        return;
    end
    selectedMagicResist = magicResist;
    Update();
end

local function HandlePvpRankIcon(self)
    local rankIcon = tonumber(self:GetName():match("[^_]+_[^_]+_[^_]+_([^_]+)"));    
    if rankIcon == selectedRank then
        return;
    end
    selectedRank = rankIcon;
    BestInSlotClassicDB.filter.pvprank = selectedRank;
    Update();
end

function BIS:UpdateIcon(name, icon, textCoord)    
    _G[name.."_ICON"]:SetTexture(icon);    
    if textCoord ~= nil then
        _G[name.."_ICON"]:SetTexCoord(unpack(textCoord));
    end
    _G[name.."_ICON"]:SetAllPoints(_G[name]);
end

function BIS:CreateIconFrame(name, parent, width, height, x, y, icon, textCoord)    
    local frame = CreateFrame("Frame", name, parent);
            
    frame:SetWidth(width); -- Set these to whatever height/width is needed 
    frame:SetHeight(height); -- for your Texture

    local texture = frame:CreateTexture(name.."_ICON","BACKGROUND");
    BIS:UpdateIcon(name, icon, textCoord);
    frame.texture = texture;

    frame:SetPoint("TOPLEFT", parent, "TOPLEFT", x,y);    

    return frame;
end

function BIS:CreateClickableIconFrame(name, parent, label, width, height, x, y, icon, textCoord, callback, desaturated)
    local frame = BIS:CreateIconFrame(name, parent, width, height, x, y, icon, textCoord);    

    _G[name]:SetScript("OnEnter", function(self)
        BIS_TOOLTIP:SetOwner(_G[name]);
        BIS_TOOLTIP:SetPoint("TOPLEFT", _G[name], "TOPRIGHT", 220, -13);                
        BIS_TOOLTIP:SetText(label);                
        BIS_TOOLTIP:Show();
    end);
    _G[name]:SetScript("OnLeave", function(self)                        
        BIS_TOOLTIP:Hide();
    end);

    _G[name]:SetScript("OnMouseDown", callback); 
        
    _G[name.."_ICON"]:SetDesaturated(desaturated);               

    return frame;
end

function BIS:CreateTextFrame(name, parent, width, height, x, y, justify)    
    local frame = parent:CreateFontString("frame"..name.."_TEXT", "OVERLAY");

    frame:SetPoint("LEFT", x, y);
    frame:SetJustifyH(justify);    
    frame:SetFontObject("GameFontHighlight");
    frame:SetWidth(width);
    frame:SetHeight(height);

    return frame;
end

local function handleKey(self, event, arg1, ...)
    if event == "ESCAPE" then
        BIS:ShowManager();        
    end
end

function BIS:ShowManager()        
    -- We load player info now because it can evolve regarding talents.
    -- There's also a bug that makes the num talent tab being at 0 after addon_loaded on start.
    BIS:LoadPlayerInfo();
    BIS:PrintPlayerInfo();

    if window == nil then
        local iconSize = 60;
        local smallIcon = iconSize / 3;        
        local pvpIcon, gender;

        visible = false;
        selectedRace = RACES_IDX[race];
        selectedClass = CLASS_IDX[class];
        if spec == "Unknown" then
            selectedSpec = nil;
        else
            selectedSpec = BIS_specsFileToSpecs[spec][2];
        end        
        selectedPhase = bis_currentPhaseId;
        selectedMagicResist = 1;        
        if BestInSlotClassicDB.filter.pvprank == nil then
            if pvpRank == 0 then
                selectedRank = 3;
            else                
                pvpRank = pvpRank - 4;
                if pvpRank == 3 or pvpRank == 4 or pvpRank == 7 or pvpRank == 8 or pvpRank == 10 or pvpRank == 12 or pvpRank == 13 or pvpRank == 14 then
                    selectedRank = pvpRank;
                elseif pvpRank == 5 or pvpRank == 6 then
                    selectedRank = 4;
                elseif pvpRank == 9 then
                    selectedRank = 8;
                elseif pvpRank == 11 then
                    selectedRank = 10;
                end                
            end
        else
            selectedRank = BestInSlotClassicDB.filter.pvprank;
        end        
        window = BIS:CreateWindow("BISManager", 1100, 750);        
        window.childFrame = {};
        window.enchantFrame = {};

        BIS_TOOLTIP = BIS:CreateGameTooltip("BIS_TOOLTIP", window);

        gender = UnitSex("player") - 1;

        for i, race in ipairs(BIS_races[faction]) do            
            BIS:CreateClickableIconFrame("frame_"..race, window, C_CreatureInfo.GetRaceInfo(race).raceName, 25, 25, 330 + ((i - 1) * 25), -15, iconRacePath, BIS_classes[race].TEXT_COORD[gender], HandleRacesIcon, false);
            for j, class in ipairs(BIS_classes[race].CLASS) do                
                BIS:CreateClickableIconFrame("frame_"..race.."_"..class, window, C_CreatureInfo.GetClassInfo(class).className, 25, 25, 450 + ((j - 1) * 25), -15, BIS_dataSpecs[class].ICON[1], nil, HandleClassIcon, false);
                for k, spec in ipairs(BIS_dataSpecs[class].SPEC) do                    
                    BIS:CreateClickableIconFrame("frame_"..race.."_"..class.."_"..BIS_dataSpecs[class].VALUE[k], window, spec, 25, 25, 625 + ((k - 1) * 25), -15, BIS_dataSpecs[class].SPEC_ICONS[k], nil, HandleSpecIcon, false);
                end
            end
        end                    
        
        for idx, phase in ipairs(phases.NAME) do            
            BIS:CreateClickableIconFrame("frame_PHASE_"..phases.VALUE[idx], window, phase, 25, 25, 100 + ((idx - 1) * 25), -15, phases.ICON[idx], nil, HandlePhasesIcon, false);            
        end        
                             
        raid = BestInSlotClassicDB.filter.raid;
        pvp = BestInSlotClassicDB.filter.pvp;
        twoHands = BestInSlotClassicDB.filter.twohands;
        worldBoss = BestInSlotClassicDB.filter.worldboss;            

        BIS:CreateClickableIconFrame("frame_RAID", window, RAID.." BIS", 16, 16, 500, -50, "Interface\\QuestFrame\\QuestTypeIcons", QUEST_TAG_TCOORDS[89], HandleRaidIcon, false);
        BIS:CreateClickableIconFrame("frame_DUNGEON", window, DUNGEONS.." BIS", 16, 16, 500, -50, "Interface\\QuestFrame\\QuestTypeIcons", QUEST_TAG_TCOORDS[81], HandleRaidIcon, false);
        
        BIS:CreateClickableIconFrame("frame_WORLD_BOSS", window, RAID_INFO_WORLD_BOSS, 16, 16, 525, -50, "Interface\\GROUPFRAME\\UI-Group-LeaderIcon", nil, HandleWorldBossIcon, not worldBoss);

        BIS:CreateClickableIconFrame("frame_ONE_HAND", window, INVTYPE_WEAPON , 16, 16, 550, -50, nil, nil, HandleTwoHandsIcon, false);
        BIS:CreateClickableIconFrame("frame_TWO_HANDS", window, TWO_HANDED, 16, 16, 550, -50, nil, nil, HandleTwoHandsIcon, false);        

        if faction == "Horde" then
            pvpIcon = iconHorde;            
        else            
            pvpIcon = iconAlliance;            
        end                            

        BIS:CreateClickableIconFrame("frame_PVP", window, PLAYER_V_PLAYER, 16, 16, 575, -50, pvpIcon, nil, HandlePvPIcon, not pvp);

        BIS:CreateClickableIconFrame("frame_SOULBOUND", window, ITEM_SOULBOUND, 16, 16, 600, -50, "Interface\\LootFrame\\LootToast", { 612/1024, 644/1024, 224/256, 256/256 }, HandleSoulboundIcon, not BestInSlotClassicDB.filter.soulboundBis);

        for idx, value in pairs(pvpranks) do            
            BIS:CreateClickableIconFrame("frame_PVP_RANK_"..value, window, GetPVPRankInfo(value).." (R"..(value-4)..")", 16, 16, 450 + ((idx - 1) * 25), -75, format("%s%02d","Interface\\PvPRankBadges\\PvPRank",value-4), nil, HandlePvpRankIcon, false);
        end                                    

        for idx, value in pairs(magicResistances.NAME) do
            BIS:CreateClickableIconFrame("frame_MAGIC_"..idx, window, magicResistances.NAME[idx]:gsub("^%l", string.upper), 25, 25, 800 + ((idx - 1) * 25), -15, "Interface\\PaperDollInfoFrame\\SpellSchoolIcon"..magicResistances.ID[idx]..".png", nil, HandleMagicIcon, false);
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
            
            BIS:CreateIconFrame("IconFrame_"..characterFrames.NAME[i], window, iconSize, iconSize, startX, startY, rootPaperDoll..characterFrames.ICON[i]);                                
            
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
                    BIS:CreateIconFrame("frame_"..characterFrames.NAME[i].."_"..j.."_ENCHANT", window.enchantFrame[i][j], smallIcon, smallIcon, 0, 0, nil);
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
                BIS:CreateIconFrame("frame_"..characterFrames.NAME[i].."_"..j.."_CHECK", window.childFrame[i][j], smallIcon, smallIcon, checkOffsetX, checkOffsetY, nil);
                BIS:CreateIconFrame("frame_"..characterFrames.NAME[i].."_"..j, window.childFrame[i][j], smallIcon, smallIcon, iconOffsetX, iconOffsetY, rootPaperDoll..characterFrames.ICON[i]);
                BIS:CreateTextFrame(characterFrames.NAME[i].."_"..j, window.childFrame[i][j], 180, smallIcon, textOffsetX, textOffsetY, textJustify);                                
            end            

        end        
    end

    if visible then
        window:Hide();
        visible = false;
        window:SetPropagateKeyboardInput(false);
        window:EnableKeyboard(false);
        window:SetScript("OnKeyDown", nil);
    else
        Update();
        window:Show();
        window:EnableKeyboard(true);
        window:SetScript("OnKeyDown", handleKey);
        window:SetPropagateKeyboardInput(true)
        visible = true;
    end
end