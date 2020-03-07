BIS_TOOLTIP = nil;

local function iconOffset(col, row)
	local offsetString = (col * 64 + iconCutoff) .. ":" .. ((col + 1) * 64 - iconCutoff)
	return offsetString .. ":" .. (row * 64 + iconCutoff) .. ":" .. ((row + 1) * 64 - iconCutoff)
end

local function enrichRecipeSource(recipeId, icon)    
    if RECIPE_LOOT[recipeId] ~= nil then
        details = RECIPE_LOOT[recipeId];
        local count = table.getn(details.NPC);
        if(count > 5) then
            count = 5
        end
        local left, right, top, bottom;
        left = 612;
        top = 224;
        right = 644;
        bottom = 256;                                    
        for idl=1, count, 1 do
            local npc = details.NPC[idl];
            if npc.Chance == -1 then                                            
                BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..npc.Zone.." - "..npc.Name.." (Unknown)");
            else
                BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..npc.Zone.." - "..npc.Name.." ("..npc.Chance.."%)");
            end
        end
    end
    if RECIPE_VENDOR[recipeId] ~= nil then
        details = RECIPE_VENDOR[recipeId];
        local count = table.getn(details.NPC);
        if(count > 5) then
            count = 5;
        end
        local left, right, top, bottom;
        left = 580;
        top = 224;
        right = 612;
        bottom = 256;                                    
        for idv=1, count, 1 do
            local npc = details.NPC[idv];
            if npc.Side == nil or npc.Side == faction then
                if npc.Price == nil then
                    if npc.Requirement == nil then
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..npc.Zone.." - "..npc.Name.." (Unknown) - Unknown price ");
                    else
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..npc.Zone.." - "..npc.Name.." ("..npc.Requirement..") - Unknown price ");
                    end
                else
                    if npc.Requirement == nil then
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..npc.Zone.." - "..npc.Name.." - "..GetMoneyString(npc.Price, true));
                    else
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..npc.Zone.." - "..npc.Name.." ("..npc.Requirement..") - "..GetMoneyString(npc.Price, true));
                    end                                            
                end
            end
        end                            
    end
    if RECIPE_QUEST[recipeId] ~= nil then
        details = RECIPE_QUEST[recipeId];                                    
        local selectedQuest = nil;
        for idq, quest in pairs(details.Quests) do
            if quest.Side == nil or quest.Side == faction then
                selectedQuest = quest;
            end
        end
        
        if IsQuestFlaggedCompleted(selectedQuest.Id) then
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..selectedQuest.Zone.." - "..selectedQuest.Name.." (completed)");
        else
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..selectedQuest.Zone.." - "..selectedQuest.Name);
        end
        
        if selectedQuest.Dungeon then
            BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[81]));
        elseif selectedQuest.Raid then
            BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        else
            BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        end
        
        --if selectedQuest.Side ~= nil then                                        
        --    BIS_TOOLTIP:AddDoubleLine("Quest Name: "..selectedQuest.Name);                                        
        --    BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[selectedQuest.Side:upper()]));                                        
        --else
        --    BIS_TOOLTIP:AddLine("Quest Name: "..selectedQuest.Name);
        --end        
    end
    if RECIPE_CONTAINER[recipeId] ~= nil then
        details = RECIPE_CONTAINER[recipeId];
        for idc, container in pairs(details.Containers) do
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t|T"..icon..":"..bis_defaultIconSize.."|t"..container.Zone.." - "..container.Name.." ("..container.Chance.."%)");
        end             
    end
end

function BIS_OnTooltipSetSpell(frame)
    local name, EnchantId = frame:GetSpell();
    
    BIS_TOOLTIP:AddLine("|T"..PROFESSIONS["Enchanting"]..":"..bis_defaultIconSize.."|t Enchanting ("..BIS_ENCHANT[EnchantId].Level..")");
    if BIS_ENCHANT[EnchantId].Recipe == nil or BIS_ENCHANT[EnchantId].Recipe == 0 then
        BIS_TOOLTIP:AddLine("|T134327:"..bis_defaultIconSize.."|t Taught by trainer");
    else
        enrichRecipeSource(BIS_ENCHANT[EnchantId].Recipe, "134327");
    end

    BIS_TOOLTIP:Show();
end

function BIS_OnTooltipSetItem(frame)
    local name, link = frame:GetItem();
    local ItemId = tonumber(string.match(string.match(link, "item[%-?%d:]+"),"[^:]+:([^:]+)"));        

    local itemInfo = BIS_ITEMS[ItemId];    
                            
    if itemInfo == nil then
        bis_log("Error while generating the tooltip for the ItemId "..ItemId, DEBUG);
    else                                
        local details;                                                                
        if ITEMS_CRAFT[ItemId] ~= nil then
            details = ITEMS_CRAFT[ItemId];
            BIS_TOOLTIP:AddLine("|T"..PROFESSIONS[details.CraftLabel]..":"..bis_defaultIconSize.."|t "..details.CraftLabel.." ("..details.CraftLevel..")");
            if itemInfo.Recipe == nil or itemInfo.Recipe == 0 then
                BIS_TOOLTIP:AddLine("|T134939:"..bis_defaultIconSize.."|t Taught by trainer");
            else
                enrichRecipeSource(itemInfo.Recipe, "134939");
            end            
        end
        if ITEMS_LOOT[ItemId] ~= nil then
            details = ITEMS_LOOT[ItemId];
            local count = table.getn(details.NPC);
            if(count > 5) then
                count = 5
            end
            local left, right, top, bottom;
            left = 612;
            top = 224;
            right = 644;
            bottom = 256;                                    
            for idl=1, count, 1 do
                local npc = details.NPC[idl];
                if npc.Chance == -1 then                                            
                    BIS_TOOLTIP:AddLine(npc.Zone.." - "..npc.Name.." (Unknown)");
                else
                    BIS_TOOLTIP:AddLine(npc.Zone.." - "..npc.Name.." ("..npc.Chance.."%)");
                end                                        
                BIS_TOOLTIP:AddTexture("Interface\\LootFrame\\LootToast", unpack({ left/1024, right/1024, top/256, bottom/256 }));
            end
        end                                    
        if ITEMS_VENDOR[ItemId] ~= nil then
            details = ITEMS_VENDOR[ItemId];
            local count = table.getn(details.NPC);
            if(count > 5) then
                count = 5;
            end
            local left, right, top, bottom;
            left = 580;
            top = 224;
            right = 612;
            bottom = 256;                                    
            for idv=1, count, 1 do
                local npc = details.NPC[idv];
                if npc.Side == nil or npc.Side == faction then
                    if npc.Price == nil then
                        if npc.Requirement == nil then
                            BIS_TOOLTIP:AddLine(npc.Zone.." - "..npc.Name.." (Unknown) - Unknown price ");
                        else
                            BIS_TOOLTIP:AddLine(npc.Zone.." - "..npc.Name.." ("..npc.Requirement..") - Unknown price ");
                        end
                    else
                        if npc.Requirement == nil then
                            BIS_TOOLTIP:AddLine(npc.Zone.." - "..npc.Name.." - "..GetMoneyString(npc.Price, true));
                        else
                            BIS_TOOLTIP:AddLine(npc.Zone.." - "..npc.Name.." ("..npc.Requirement..") - "..GetMoneyString(npc.Price, true));
                        end                                            
                    end                                        
                    BIS_TOOLTIP:AddTexture("Interface\\LootFrame\\LootToast", unpack({ left/1024, right/1024, top/256, bottom/256 }));
                end
            end                                    
        end
        if ITEMS_QUEST[ItemId] ~= nil then
            details = ITEMS_QUEST[ItemId];                                    
            local selectedQuest = nil;
            for idq, quest in pairs(details.Quests) do
                if quest.Side == nil or quest.Side == faction then
                    selectedQuest = quest;
                end
            end
            
            if IsQuestFlaggedCompleted(selectedQuest.Id) then
                BIS_TOOLTIP:AddLine(selectedQuest.Zone.." - "..selectedQuest.Name.." (completed)");
            else
                BIS_TOOLTIP:AddLine(selectedQuest.Zone.." - "..selectedQuest.Name);
            end
            
            if selectedQuest.Dungeon then
                BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[81]));
            elseif selectedQuest.Raid then
                BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
            else
                BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
            end
            
            --if selectedQuest.Side ~= nil then                                        
            --    BIS_TOOLTIP:AddDoubleLine("Quest Name: "..selectedQuest.Name);                                        
            --    BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[selectedQuest.Side:upper()]));                                        
            --else
            --    BIS_TOOLTIP:AddLine("Quest Name: "..selectedQuest.Name);
            --end
        end
        if ITEMS_CONTAINER[ItemId] ~= nil then
            details = ITEMS_CONTAINER[ItemId];
            for idc, container in pairs(details.Containers) do
                BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t "..container.Zone.." - "..container.Name.." ("..container.Chance.."%)");
            end                                    
        end        
    end

    if ItemId == 11622 then
        -- Lesser Arcanum of Rumination
        BIS_TOOLTIP:AddLine("Libram of Rumination - Mathredis Firestar - Burning Steppes");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11752)..":"..bis_defaultIconSize.."|t 1 Black Blood of the Tormented - Dark Coffer - Blackrock Depths (49%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11732)..":"..bis_defaultIconSize.."|t 1 Libram of Rumination - World Drop - Zone 48-60");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8424)..":"..bis_defaultIconSize.."|t 1 Gizzard Gum - Quest - Vulture's Vigor - Blasted Lands");
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11642 then
        -- Lesser Arcanum of Constitution.
        BIS_TOOLTIP:AddLine("Libram of Constitution - Mathredis Firestar - Burning Steppes");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8411)..":"..bis_defaultIconSize.."|t 1 Lung Juice Cocktail - Quest - A Boar's Vitality - Blasted Lands");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11733)..":"..bis_defaultIconSize.."|t 1 Libram of Constitution - World Drop - Zone 48-60");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 4 Night Dragon's Breath - Contained in Plants - Felwood");
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11643 then
        -- Lesser Arcanum of Tenacity
        BIS_TOOLTIP:AddLine("Libram of Tenacity - Mathredis Firestar - Burning Steppes");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11753)..":"..bis_defaultIconSize.."|t 1 Eye of Kajal - Dark Coffer - Blackrock Depths (36%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11734)..":"..bis_defaultIconSize.."|t 1 Libram of Tenacity - World Drop - Zone 48-60");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11564)..":"..bis_defaultIconSize.."|t 4 Crystal Ward - |T"..GetItemIcon(11186)..":"..bis_defaultIconSize.."|t and |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t - Un'Goro (Western Crystal Pylon)");
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11644 then
        -- Lesser Arcanum of Resilience
        BIS_TOOLTIP:AddLine("Libram of Resilience - Mathredis Firestar - Burning Steppes");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11751)..":"..bis_defaultIconSize.."|t 1 Burning Essence - Dark Coffer - Blackrock Depths (43%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11734)..":"..bis_defaultIconSize.."|t 1 Libram of Resilience - World Drop - Zone 48-60");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11567)..":"..bis_defaultIconSize.."|t 4 Crystal Spire - |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t and |T"..GetItemIcon(11188)..":"..bis_defaultIconSize.."|t - Un'Goro (Eastern Crystal Pylon)");
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11645 or ItemId == 11646 or ItemId == 11647 or ItemId == 11648 or ItemId == 11649 then
        -- Lesser Arcanum of Voracity (+8 stat)
        BIS_TOOLTIP:AddLine("Libram of Voracity - Mathredis Firestar - Burning Steppes");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11951)..":"..bis_defaultIconSize.."|t 4 Whipper Root Tuber - Contained in Plants - Felwood");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11737)..":"..bis_defaultIconSize.."|t 1 Libram of Voracity - World Drop - Zone 48-60");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11563)..":"..bis_defaultIconSize.."|t 4 Crystal Force - |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t and |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t - Un'Goro (Eastern Crystal Pylon)");
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 18329 then
        -- Arcanum of Rapidity
        BIS_TOOLTIP:AddLine("Libram of Rapidity - Lorekeeper Lydros - Dire Maul");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 Pristine Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 Large Brilliant Shard - Disenchanting Blue items");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18332)..":"..bis_defaultIconSize.."|t 1 Libram of Rapidity - Dire Maul (2%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12938)..":"..bis_defaultIconSize.."|t 2 Blond of Heroes - Contained in Blood of Heroes - Eastern and Western Plaguelands");
    elseif ItemId == 18330 then
        -- Arcanum of Focus
        BIS_TOOLTIP:AddLine("Libram of Focus - Lorekeeper Lydros - Dire Maul");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 Pristine Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 4 Large Brilliant Shard - Disenchanting Blue items");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18333)..":"..bis_defaultIconSize.."|t 1 Libram of Focus - Dire Maul (2%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12753)..":"..bis_defaultIconSize.."|t 2 Skin of Shadow - Scholomance (5%)");
    elseif ItemId == 18331 then
        -- Arcanum of Protection
        BIS_TOOLTIP:AddLine("Libram of Protection - Lorekeeper Lydros - Dire Maul");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 Pristine Black Diamond - Blackrock Depths drop (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 Large Brilliant Shard - Disenchanting Blue items");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18334)..":"..bis_defaultIconSize.."|t 1 Libram of Protection - Dire Maul (2%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 1 Frayed Abomination Stitching - Abominations - Stratholme (25%)");
    elseif ItemId == 22635 then
        -- Savage Guard
        BIS_TOOLTIP:AddLine("The Savage Guard - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(18330)..":"..bis_defaultIconSize.."|t 1 Arcanum of Focus - Quest - Dire Maul");
        BIS_TOOLTIP:AddLine("  or |T"..GetItemIcon(18329)..":"..bis_defaultIconSize.."|t 1 Arcanum of Rapidity - Quest - Dire Maul");
        BIS_TOOLTIP:AddLine("  or |T"..GetItemIcon(18331)..":"..bis_defaultIconSize.."|t 1 Arcanum of Protection - Quest - Dire Maul");
    elseif ItemId == 22636 or ItemId == 22638 then
        -- Ice Guard and Shadow Guard
        if ItemId == 22636 then
            BIS_TOOLTIP:AddLine("The Ice Guard - Mataus the Wrathcaster - Eastern Plaguelands");
        else
            BIS_TOOLTIP:AddLine("The Shadow Guard - Mataus the Wrathcaster - Eastern Plaguelands");
        end
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22524)..":"..bis_defaultIconSize.."|t 10 Insignia of the Crusade - Quest - Eastern Plaguelands");
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));    
    elseif ItemId == 17182 then
        -- Sulfuras
        local left, right, top, bottom;
        left = 612;
        top = 224;
        right = 644;
        bottom = 256;    
        BIS_TOOLTIP:AddLine("Molten Core - Ragnaros - Eye of Sulfuras (13%)")
        BIS_TOOLTIP:AddTexture("Interface\\LootFrame\\LootToast", unpack({ left/1024, right/1024, top/256, bottom/256 }));
        BIS_TOOLTIP:AddLine("|T"..PROFESSIONS["Blacksmithing"]..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(17193)..":"..bis_defaultIconSize.."|t Blacksmithing - Sulfuron Hammer (300)");                                    
    elseif ItemId == 22630 or ItemId == 22631 or ItemId == 22632 then
        -- Atiesh.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22726)..":"..bis_defaultIconSize.."|t 40 Splinter of Atiesh - Naxxramas boss (25%)");
        BIS_TOOLTIP:AddLine("Atiesh, the Befouled Greatstaff, collect: ");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22734)..":"..bis_defaultIconSize.."|t Base of Atiesh - Temple of Ahn'Qiraj - C'Thun (100%)");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22733)..":"..bis_defaultIconSize.."|t Staff Head of Atiesh - Naxxramas - Kel'Thuzad (100%)");
        BIS_TOOLTIP:AddLine("Stratholme - Kill Atiesh");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[81]));
    elseif ItemId == 19019 then
        -- Thunderfury.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t Bindings of the Windseeker - Molten Core - Baron Geddon (6%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t Bindings of the Windseeker - Molten Core - Garr (6%)");
        BIS_TOOLTIP:AddLine("Thunderaan the Windseeker, collect: ")
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19017)..":"..bis_defaultIconSize.."|t Essence of the Firelord - Molten Core - Ragnaros (100%)");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(17771)..":"..bis_defaultIconSize.."|t 10 Elementium Bars (Requires MC and BWL reagents)");
        BIS_TOOLTIP:AddLine("Silithus - Rise, Thunderfury !");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));                                                                        
    elseif ItemId == 13603 or ItemId == 13701 then
        -- Warlock Spellstone.
        local color = RAID_CLASS_COLORS[class];
        local coords = CLASS_ICON_TCOORDS[class];
        local classfontstring = "|T" .. iconpath .. ":14:14:::256:256:" .. iconOffset(coords[1] * 4, coords[3] * 4) .. "|t";                                    
        if ItemId == 13603 then
            BIS_TOOLTIP:AddLine(classfontstring.."|T"..GetSpellTexture(17728)..":"..bis_defaultIconSize.."|t Create Spellstone (Major)");
        elseif ItemId == 13701 then
            BIS_TOOLTIP:AddLine(classfontstring.."|T"..GetSpellTexture(17953)..":"..bis_defaultIconSize.."|t Create Spellstone (Major)");                                        
        end
    elseif ItemId == 20077 or ItemId == 20076 or ItemId == 20078 then
        -- Zandalar Signets
        BIS_TOOLTIP:AddLine("Zandalar Tribe (Exalted)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19858)..":"..bis_defaultIconSize.."|t 15 Zandalar Honor Token obtained from: ");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19698)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19699)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19700)..":"..bis_defaultIconSize.."|t - Quest - Zulian, Razzashi, and Hakkari Coins");
        BIS_TOOLTIP:AddLine("  or |T"..GetItemIcon(19704)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19705)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19706)..":"..bis_defaultIconSize.."|t - Quest - Sandfury, Skullsplitter, and Bloodscalp Coins");
        BIS_TOOLTIP:AddLine("  or |T"..GetItemIcon(19701)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19702)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19703)..":"..bis_defaultIconSize.."|t - Quest - Gurubashi, Vilebranch, and Witherbark Coins");
    elseif ItemId == 19783 then
        -- Syncretist's Sigil
        BIS_TOOLTIP:AddLine("Syncretist's Sigil - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19788 then
        -- Hoodoo Hex
        BIS_TOOLTIP:AddLine("Hoodoo Hex - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19787 then
        -- Presence of Sight
        BIS_TOOLTIP:AddLine("Presence of Sight - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19789 then
        -- Prophetic Aura
        BIS_TOOLTIP:AddLine("Prophetic Aura - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19786 then
        -- Vodouisant's Vigilant Embrace
        BIS_TOOLTIP:AddLine("Vodouisant's Vigilant Embrace - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19790 then
        -- Animist's Caress
        BIS_TOOLTIP:AddLine("Animist's Caress - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19782 then
        -- Presence of Might
        BIS_TOOLTIP:AddLine("Presence of Might - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19784 then
        -- Death's Embrace
        BIS_TOOLTIP:AddLine("Death's Embrace - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    elseif ItemId == 19785 then
        -- Falcon's Call
        BIS_TOOLTIP:AddLine("Falcon's Call - Zanza the Restless - Zul'Gurub");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t Primal Hakkari Idol - Zul'Gurub - Jin'do the Hexxer and Bloodlord Mandokir");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t Punctured Voodoo Doll - Zul'Gurub - Contained in Jinxed Hoodoo Pile");    
    end

    BIS_TOOLTIP:Show();
end

function BIS_CreateGameTooltip(name, parent)
    local tooltip = CreateFrame( "GameTooltip", "frame"..name, parent, "GameTooltipTemplate" );    
    
    tooltip:SetOwner(parent);
    tooltip:SetPoint("TOPLEFT", parent, "TOPRIGHT", 220, -13);
    
    tooltip:SetScript("OnTooltipSetItem", BIS_OnTooltipSetItem);
    tooltip:SetScript("OnTooltipSetSpell", BIS_OnTooltipSetSpell);

    return tooltip;
end
