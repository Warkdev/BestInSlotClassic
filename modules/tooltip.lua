BIS_TOOLTIP = nil;

local function iconOffset(col, row)
	local offsetString = (col * 64 + iconCutoff) .. ":" .. ((col + 1) * 64 - iconCutoff)
	return offsetString .. ":" .. (row * 64 + iconCutoff) .. ":" .. ((row + 1) * 64 - iconCutoff)
end

local function enrichRecipeSource(recipeId, icon)    
    local BIS_tableNPCS=BIS_LangNameLookup[BIS_GetUILocale()];
    local BIS_tableQuests=BIS_LangQuestLookup[BIS_GetUILocale()];
    local BIS_tableObjects=BIS_LangObjectLookup[BIS_GetUILocale()];
    local gender = UnitSex("player");    
    local recipe = BIS_RECIPE[recipeId];

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
                BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (Unknown)");
            else
                BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..npc.Chance.."%)");
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
                if recipe.Price == 0 then
                    if recipe.FactionId == 0 then
                        BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (Unknown) - Unknown price ");
                    else                        
                        BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..BIS_GetLocalizedFactionName(recipe.FactionId).." - "..BIS_GetLocalizedReputationLevel(recipe.ReputationLevel)..") - Unknown price ");                        
                    end
                else
                    if recipe.FactionId == 0 then
                        BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." - "..GetMoneyString(recipe.Price, true));
                    else                        
                        BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..BIS_GetLocalizedFactionName(recipe.FactionId).." - "..BIS_GetLocalizedReputationLevel(recipe.ReputationLevel)..") - "..GetMoneyString(recipe.Price, true));                        
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
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id][1].." ("..COMPLETE..")");
        else
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id][1]);
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
            BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t "..BIS_GetLocalizedMapName(container.Zone).." - "..BIS_tableObjects[container.Id].." ("..container.Chance.."%)");
        end             
    end
end

function BIS_OnTooltipSetSpell(frame)
    local name, EnchantId = frame:GetSpell();
        
    BIS_TOOLTIP:AddLine("|T"..PROFESSIONS["Enchanting"]..":"..bis_defaultIconSize.."|t "..PROFESSIONS_NAME["Enchanting"].." ("..BIS_ENCHANT[EnchantId].Level..")");    
    if BIS_ENCHANT[EnchantId].Recipe == nil or BIS_ENCHANT[EnchantId].Recipe == 0 then
        BIS_TOOLTIP:AddLine("|T134327:"..bis_defaultIconSize.."|t "..MINIMAP_TRACKING_TRAINER_PROFESSION);
    else
        enrichRecipeSource(BIS_ENCHANT[EnchantId].Recipe, "134327");
    end

    BIS_TOOLTIP:Show();
end

function BIS_OnTooltipSetItem(frame)
    local name, link = frame:GetItem();
    local ItemId = tonumber(string.match(string.match(link, "item[%-?%d:]+"),"[^:]+:([^:]+)"));        

    local itemInfo = BIS_ITEMS[ItemId];
    local gender = UnitSex("player");
          
    local BIS_tableNPCS=BIS_LangNameLookup[BIS_GetUILocale()];
    local BIS_tableQuests=BIS_LangQuestLookup[BIS_GetUILocale()];
    local BIS_tableObjects=BIS_LangObjectLookup[BIS_GetUILocale()];

    if itemInfo == nil then
        bis_log("Error while generating the tooltip for the ItemId "..ItemId, DEBUG);
    else                                
        local details;                                                                
        if ITEMS_CRAFT[ItemId] ~= nil then
            details = ITEMS_CRAFT[ItemId];
            BIS_TOOLTIP:AddLine("|T"..PROFESSIONS[details.CraftLabel]..":"..bis_defaultIconSize.."|t "..PROFESSIONS_NAME[details.CraftLabel].." ("..details.CraftLevel..")");
            if itemInfo.Recipe == nil or itemInfo.Recipe == 0 then
                BIS_TOOLTIP:AddLine("|T134939:"..bis_defaultIconSize.."|t "..MINIMAP_TRACKING_TRAINER_PROFESSION);
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
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (Unknown)");
                else
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..npc.Chance.."%)");
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
                    local factionId = 0;
                    if faction == "Alliance" then
                        factionId = itemInfo.AllianceFactionId;
                    else
                        factionId = itemInfo.HordeFactionId;
                    end
                    if itemInfo.Price == 0 then
                        if itemInfo.PvPRank == 0 and factionId == 0 then
                            BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (Unknown) - Unknown price ");
                        else
                            if itemInfo.PvPRank ~= 0 then
                                BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (R"..itemInfo.PvPRank..") - Unknown price ");
                            else
                                BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..BIS_GetLocalizedFactionName(factionId).." - "..BIS_GetLocalizedReputationLevel(itemInfo.ReputationLevel)..") - Unknown price ");
                            end
                        end
                    else
                        if itemInfo.PvPRank == 0 and factionId == 0 then
                            BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." - "..GetMoneyString(itemInfo.Price, true));
                        else
                            if itemInfo.PvPRank ~= 0 then
                                BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (R"..itemInfo.PvPRank..") - "..GetMoneyString(itemInfo.Price, true));
                            else
                                BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..BIS_GetLocalizedFactionName(factionId).." - "..BIS_GetLocalizedReputationLevel(itemInfo.ReputationLevel)..") - "..GetMoneyString(itemInfo.Price, true));
                            end                            
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
                           
            if selectedQuest ~= nil and IsQuestFlaggedCompleted(selectedQuest.Id) then
                if BIS_tableQuests[selectedQuest.Id] ~= nil and BIS_tableQuests[selectedQuest.Id][1] ~= nil then                    
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id][1].." ("..COMPLETE..")");
                else
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - Missing translation (Id:"..selectedQuest.Id..") ("..COMPLETE..")");
                end
            elseif selectedQuest ~= nil then
                if BIS_tableQuests[selectedQuest.Id] ~= nil and BIS_tableQuests[selectedQuest.Id][1] ~= nil then                    
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id][1]);
                else
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - Unknown quest");
                end
            end
            
            if selectedQuest ~= nil and selectedQuest.Dungeon then
                BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[81]));
            elseif selectedQuest ~= nil and selectedQuest.Raid then
                BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
            elseif selectedQuest ~= nil then
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
                BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t "..BIS_GetLocalizedMapName(container.Zone).." - "..BIS_tableObjects[container.Id].." ("..container.Chance.."%)");
            end                                    
        end        
    end

    if ItemId == 11622 then
        -- Lesser Arcanum of Rumination

        BIS_TOOLTIP:AddLine(BIS_tableQuests[4463][1].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11752)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11752).." - "..BIS_GetLocalizedMapName(230).." - "..BIS_tableObjects[160845].." (49%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11732)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11732));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8424)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(8424).." - "..BIS_GetLocalizedMapName(1419).." - "..BIS_tableQuests[2603][1]);
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11642 then
        -- Lesser Arcanum of Constitution.
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4481][1].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8411)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(8411).." - "..BIS_GetLocalizedMapName(1419).." - "..BIS_tableQuests[2583][1]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11733)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11733));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11952).." - "..BIS_GetLocalizedMapName(1448));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11643 then
        -- Lesser Arcanum of Tenacity
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4482][1].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11753)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11753).." - "..BIS_GetLocalizedMapName(230).." - "..BIS_tableObjects[160845].." (36%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11734)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11734));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11564)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11564).." - |T"..GetItemIcon(11186)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t -"..BIS_GetLocalizedMapName(1449).." - "..BIS_tableObjects[164956]);
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11644 then
        -- Lesser Arcanum of Resilience
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4483][1].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11751)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11751).." - "..BIS_GetLocalizedMapName(230).." - "..BIS_tableObjects[160845].." (43%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11736)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11736));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11567)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11567).." - |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11188)..":"..bis_defaultIconSize.."|t -"..BIS_GetLocalizedMapName(1449).." - "..BIS_tableObjects[164957]);        
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11645 or ItemId == 11646 or ItemId == 11647 or ItemId == 11648 or ItemId == 11649 then
        -- Lesser Arcanum of Voracity (+8 stat)
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4484][1].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11951)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11951).." - "..BIS_GetLocalizedMapName(1448));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11737)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11737));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11563)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11563).." - |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t -"..BIS_GetLocalizedMapName(1449).." - "..BIS_tableObjects[164957]);        
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 18329 then
        -- Arcanum of Rapidity
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7483][1].." - "..BIS_tableNPCS[14368].." - "..BIS_GetLocalizedMapName(429));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS_GetLocalizedMapName(230).." (5%)");        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18332)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18332));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12938)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(12938).." - "..BIS_GetLocalizedMapName(1423).." - "..BIS_tableObjects[176213]);
    elseif ItemId == 18330 then
        -- Arcanum of Focus
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7484][1].." - "..BIS_tableNPCS[14368].." - "..BIS_GetLocalizedMapName(429));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS_GetLocalizedMapName(230).." (5%)");        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18333)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18333));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12753)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(12753).." - "..BIS_GetLocalizedMapName(289).." (5%)");
    elseif ItemId == 18331 then
        -- Arcanum of Protection
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7485][1].." - "..BIS_tableNPCS[14368].." - "..BIS_GetLocalizedMapName(429));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS_GetLocalizedMapName(230).." (5%)");   
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18334)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11952).." - "..BIS_GetLocalizedMapName(329).." - "..BIS_tableNPCS[8545].." (25%)");
    elseif ItemId == 22635 then
        -- Savage Guard        
        BIS_TOOLTIP:AddLine(BIS_tableQuests[9208][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(18330)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18330).." - "..BIS_GetLocalizedMapName(429));

        BIS_TOOLTIP:AddLine(BIS_tableQuests[9209][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine(" |T"..GetItemIcon(18329)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18329).." - "..BIS_GetLocalizedMapName(429));

        BIS_TOOLTIP:AddLine(BIS_tableQuests[9210][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));                
        BIS_TOOLTIP:AddLine(" |T"..GetItemIcon(18331)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18331).." - "..BIS_GetLocalizedMapName(429));        
    elseif ItemId == 22636 or ItemId == 22638 then
        -- Ice Guard and Shadow Guard
        if ItemId == 22636 then
            BIS_TOOLTIP:AddLine(BIS_tableQuests[9211][1].." - "..BIS_tableNPCS[16133].." - "..BIS_GetLocalizedMapName(1423));
        else
            BIS_TOOLTIP:AddLine(BIS_tableQuests[9213][1].." - "..BIS_tableNPCS[16133].." - "..BIS_GetLocalizedMapName(1423));            
        end
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22524)..":"..bis_defaultIconSize.."|t 10 "..GetItemInfo(22524).." - "..BIS_GetLocalizedMapName(1423));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));    
    elseif ItemId == 17182 then
        -- Sulfuras
        local left, right, top, bottom;
        left = 612;
        top = 224;
        right = 644;
        bottom = 256;    
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(17204)..":"..bis_defaultIconSize.."|t "..BIS_GetLocalizedMapName(409).." - "..BIS_tableNPCS[11502].." - "..GetItemInfo(17204).." (13%)")
        BIS_TOOLTIP:AddTexture("Interface\\LootFrame\\LootToast", unpack({ left/1024, right/1024, top/256, bottom/256 }));
        BIS_TOOLTIP:AddLine("|T"..PROFESSIONS["Blacksmithing"]..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(17193)..":"..bis_defaultIconSize.."|t "..PROFESSIONS_NAME["Blacksmithing"].." - "..GetItemInfo(17193).." (300)");
    elseif ItemId == 22630 or ItemId == 22631 or ItemId == 22632 then
        -- Atiesh.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22726)..":"..bis_defaultIconSize.."|t 40 "..GetItemInfo(22726).." - "..BIS_GetLocalizedMapName(533).." (25%)");
        BIS_TOOLTIP:AddLine(BIS_tableQuests[9251][1].." : ");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22734)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22734).." - "..BIS_GetLocalizedMapName(531).." - "..BIS_tableNPCS[15727].." (100%)");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22733)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22733).." - "..BIS_GetLocalizedMapName(533).." - "..BIS_tableNPCS[15990].." (100%)");        
    elseif ItemId == 19019 then
        -- Thunderfury.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t "..GetItemInfo(18563).." - "..BIS_GetLocalizedMapName(409).." - "..BIS_tableNPCS[12056].." (6%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t "..GetItemInfo(18563).." - "..BIS_GetLocalizedMapName(409).." - "..BIS_tableNPCS[12057].." (6%)");
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7786][1].." :")
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19017)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19017).." - "..BIS_GetLocalizedMapName(409).." - "..BIS_tableNPCS[11502].." (100%)");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(17771)..":"..bis_defaultIconSize.."|t 10 "..GetItemInfo(17771));        
    elseif ItemId == 13603 or ItemId == 13701 then
        -- Warlock Spellstone.
        local color = RAID_CLASS_COLORS[class];
        local coords = CLASS_ICON_TCOORDS[class];
        local classfontstring = "|T" .. iconpath .. ":14:14:::256:256:" .. iconOffset(coords[1] * 4, coords[3] * 4) .. "|t";                                    
        if ItemId == 13603 then
            BIS_TOOLTIP:AddLine(classfontstring.."|T"..GetSpellTexture(17728)..":"..bis_defaultIconSize.."|t "..GetSpellInfo(17728));
        elseif ItemId == 13701 then
            BIS_TOOLTIP:AddLine(classfontstring.."|T"..GetSpellTexture(17953)..":"..bis_defaultIconSize.."|t "..GetSpellInfo(17953));                                        
        end
    elseif ItemId == 20077 or ItemId == 20076 or ItemId == 20078 then
        -- Zandalar Signets
        if gender == 2 then            
            BIS_TOOLTIP:AddLine(BIS_GetLocalizedFactionName(270).." "..FACTION_STANDING_LABEL8);
        else
            BIS_TOOLTIP:AddLine(BIS_GetLocalizedFactionName(270).." "..FACTION_STANDING_LABEL8_FEMALE);
        end                    
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19858)..":"..bis_defaultIconSize.."|t 15 "..GetItemInfo(19858)..": ");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19698)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19699)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19700)..":"..bis_defaultIconSize.."|t - "..GetItemInfo(19698)..", "..GetItemInfo(19699)..", "..GetItemInfo(19700));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19704)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19705)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19706)..":"..bis_defaultIconSize.."|t - "..GetItemInfo(19704)..", "..GetItemInfo(19705)..", "..GetItemInfo(19706));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19701)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19702)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19703)..":"..bis_defaultIconSize.."|t - "..GetItemInfo(19701)..", "..GetItemInfo(19702)..", "..GetItemInfo(19703));
    elseif ItemId == 19783 then
        -- Syncretist's Sigil
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8185][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19788 then
        -- Hoodoo Hex
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8190][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19787 then
        -- Presence of Sight
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8189][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19789 then
        -- Prophetic Aura
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8191][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19786 then
        -- Vodouisant's Vigilant Embrace
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8188][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19790 then
        -- Animist's Caress
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8192][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19782 then
        -- Presence of Might
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8184][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19784 then
        -- Death's Embrace
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8186][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19785 then
        -- Falcon's Call
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8187][1].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
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
