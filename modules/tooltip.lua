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
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." (Unknown) - Unknown price ");
                    else                        
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..BIS_GetLocalizedFactionName(recipe.FactionId).." - "..BIS_GetLocalizedReputationLevel(recipe.ReputationLevel)..") - Unknown price ");                        
                    end
                else
                    if recipe.FactionId == 0 then
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." - "..GetMoneyString(recipe.Price, true));
                    else                        
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(npc.Zone).." - "..BIS_tableNPCS[npc.Id].." ("..BIS_GetLocalizedFactionName(recipe.FactionId).." - "..BIS_GetLocalizedReputationLevel(recipe.ReputationLevel)..") - "..GetMoneyString(recipe.Price, true));                        
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
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id].." ("..COMPLETE..")");
        else
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id]);
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
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t "..BIS_GetLocalizedMapName(container.Zone).." - "..BIS_tableObjects[container.Id].." ("..container.Chance.."%)");
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
                if BIS_tableQuests[selectedQuest.Id] ~= nil then                    
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id].." ("..COMPLETE..")");
                else
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - Missing translation (Id:"..selectedQuest.Id..") ("..COMPLETE..")");
                end
            elseif selectedQuest ~= nil then
                if BIS_tableQuests[selectedQuest.Id] ~= nil then                    
                    BIS_TOOLTIP:AddLine(BIS_GetLocalizedMapName(selectedQuest.Zone).." - "..BIS_tableQuests[selectedQuest.Id]);
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
                if BIS_tableObjects[container.Id] ~= nil then
                    BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t "..BIS_GetLocalizedMapName(container.Zone).." - "..BIS_tableObjects[container.Id].." ("..container.Chance.."%)");
                else
                    BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t "..BIS_GetLocalizedMapName(container.Zone).." - (Missing Translation: "..container.Id..") ("..container.Chance.."%)");
                end
            end                                    
        end        
    end

    if ItemId == 11622 then
        -- Lesser Arcanum of Rumination

        BIS_TOOLTIP:AddLine(BIS_tableQuests[4463].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11752)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11752).." - "..BIS_GetLocalizedMapName(230).." - "..BIS_tableObjects[160845].." (49%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11732)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11732));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8424)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(8424).." - "..BIS_GetLocalizedMapName(1419).." - "..BIS_tableQuests[2603]);
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11642 then
        -- Lesser Arcanum of Constitution.
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4481].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8411)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(8411).." - "..BIS_GetLocalizedMapName(1419).." - "..BIS_tableQuests[2583]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11733)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11733));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11952).." - "..BIS_GetLocalizedMapName(1448));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11643 then
        -- Lesser Arcanum of Tenacity
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4482].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11753)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11753).." - "..BIS_GetLocalizedMapName(230).." - "..BIS_tableObjects[160845].." (36%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11734)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11734));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11564)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11564).." - |T"..GetItemIcon(11186)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t -"..BIS_GetLocalizedMapName(1449).." - "..BIS_tableObjects[164956]);
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11644 then
        -- Lesser Arcanum of Resilience
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4483].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11751)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11751).." - "..BIS_GetLocalizedMapName(230).." - "..BIS_tableObjects[160845].." (43%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11736)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11736));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11567)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11567).." - |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11188)..":"..bis_defaultIconSize.."|t -"..BIS_GetLocalizedMapName(1449).." - "..BIS_tableObjects[164957]);        
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11645 or ItemId == 11646 or ItemId == 11647 or ItemId == 11648 or ItemId == 11649 then
        -- Lesser Arcanum of Voracity (+8 stat)
        BIS_TOOLTIP:AddLine(BIS_tableQuests[4484].." - "..BIS_tableNPCS[9836].." - "..BIS_GetLocalizedMapName(1428));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS_GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11951)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11951).." - "..BIS_GetLocalizedMapName(1448));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11737)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11737));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11563)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11563).." - |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t -"..BIS_GetLocalizedMapName(1449).." - "..BIS_tableObjects[164957]);        
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 18329 then
        -- Arcanum of Rapidity
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7483].." - "..BIS_tableNPCS[14368].." - "..BIS_GetLocalizedMapName(429));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS_GetLocalizedMapName(230).." (5%)");        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18332)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18332));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12938)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(12938).." - "..BIS_GetLocalizedMapName(1423).." - "..BIS_tableObjects[176213]);
    elseif ItemId == 18330 then
        -- Arcanum of Focus
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7484].." - "..BIS_tableNPCS[14368].." - "..BIS_GetLocalizedMapName(429));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS_GetLocalizedMapName(230).." (5%)");        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18333)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18333));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12753)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(12753).." - "..BIS_GetLocalizedMapName(289).." (5%)");
    elseif ItemId == 18331 then
        -- Arcanum of Protection
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7485].." - "..BIS_tableNPCS[14368].." - "..BIS_GetLocalizedMapName(429));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS_GetLocalizedMapName(230).." (5%)");   
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18334)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11952).." - "..BIS_GetLocalizedMapName(329).." - "..BIS_tableNPCS[8545].." (25%)");
    elseif ItemId == 22635 then
        -- Savage Guard        
        BIS_TOOLTIP:AddLine(BIS_tableQuests[9208].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(18330)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18330).." - "..BIS_GetLocalizedMapName(429));

        BIS_TOOLTIP:AddLine(BIS_tableQuests[9209].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine(" |T"..GetItemIcon(18329)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18329).." - "..BIS_GetLocalizedMapName(429));

        BIS_TOOLTIP:AddLine(BIS_tableQuests[9210].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));                
        BIS_TOOLTIP:AddLine(" |T"..GetItemIcon(18331)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18331).." - "..BIS_GetLocalizedMapName(429));        
    elseif ItemId == 22636 or ItemId == 22638 then
        -- Ice Guard and Shadow Guard
        if ItemId == 22636 then
            BIS_TOOLTIP:AddLine(BIS_tableQuests[9211].." - "..BIS_tableNPCS[16133].." - "..BIS_GetLocalizedMapName(1423));
        else
            BIS_TOOLTIP:AddLine(BIS_tableQuests[9213].." - "..BIS_tableNPCS[16133].." - "..BIS_GetLocalizedMapName(1423));            
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
        BIS_TOOLTIP:AddLine(BIS_tableQuests[9251].." : ");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22734)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22734).." - "..BIS_GetLocalizedMapName(531).." - "..BIS_tableNPCS[15727].." (100%)");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22733)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22733).." - "..BIS_GetLocalizedMapName(533).." - "..BIS_tableNPCS[15990].." (100%)");        
    elseif ItemId == 19019 then
        -- Thunderfury.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t "..GetItemInfo(18563).." - "..BIS_GetLocalizedMapName(409).." - "..BIS_tableNPCS[12056].." (6%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t "..GetItemInfo(18563).." - "..BIS_GetLocalizedMapName(409).." - "..BIS_tableNPCS[12057].." (6%)");
        BIS_TOOLTIP:AddLine(BIS_tableQuests[7786].." :")
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
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8185].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19788 then
        -- Hoodoo Hex
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8190].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19787 then
        -- Presence of Sight
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8189].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19789 then
        -- Prophetic Aura
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8191].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19786 then
        -- Vodouisant's Vigilant Embrace
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8188].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19790 then
        -- Animist's Caress
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8192].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19782 then
        -- Presence of Might
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8184].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19784 then
        -- Death's Embrace
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8186].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableNPCS[11380]..", "..BIS_tableNPCS[11382]);
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS_GetLocalizedMapName(309).." - "..BIS_tableObjects[180228]);    
    elseif ItemId == 19785 then
        -- Falcon's Call
        BIS_TOOLTIP:AddLine(BIS_tableQuests[8187].." - "..BIS_tableNPCS[15042].." - "..BIS_GetLocalizedMapName(309));  
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

function BIS_OnGameTooltipSetItem(frame)
    if not BestInSlotClassicDB.options.bistooltip then
        return;
    end

    local name, link = frame:GetItem();
    local _, itemId, enchantId, jewelId1, jewelId2, jewelId3, jewelId4, suffixId, uniqueId,
        linkLevel, specializationID, reforgeId, unknown1, unknown2 = strsplit(":", link)    
    
    itemId = tonumber(itemId);
    suffixId = tonumber(suffixId);
    if suffixId == nil then
        suffixId = 0;
    end    

    if BIS_ITEMS[itemId] == nil then
        return;
    end

    local itemPhase = math.floor(BIS_ITEMS[itemId].Phase);

    --local stats = GetItemStats(link);
    local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
    itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, 
    isCraftingReagent = GetItemInfo(itemId);    
    local invSlot = BIS_INVTYPE_INVSLOT[itemEquipLoc];
    local twoHands = false;    

    if itemEquipLoc == nil or (itemClassID ~= LE_ITEM_CLASS_ARMOR and itemClassID ~= LE_ITEM_CLASS_WEAPON) or invSlot == nil then
        return;
    end        

    if itemEquipLoc == "INVTYPE_2HWEAPON" then
        twoHands = true;
    end 
    
    --bis_log("Searching for item in BIS database with the following settings Item Id ("..itemId.."), Faction ("..faction.."), InvSlot ("..invSlot..")", DEBUG);
    --function SearchBis(faction, race, class, phase, spec, invSlot, twoHands, raid, worldBoss, pvp, pvpRank, itemId)
    --local itemList = GetItemPosition(faction, itemId, BestInSlotClassicDB.filter.raid, invSlot, twoHands);

    local bisList;
    local positions = {};
    -- Special var for humans/orcs.
    local positionsWeapSkill = {};
    local positionsOHWeapSkill = {};
    -- Special var for off-hand.
    local positionsOffhand = {};
    local raceWeapSkill;
    local otherRaceWeapSkill;
    local hasWeapSkill = false;    
    local found = false;
    local foundWeapSkill = false;
    local foundOH = false; 
    local foundOHWeapSkill = false;
    local phase;
    local r,g,b = .9,.8,.5;        

    if faction == "Alliance" then
        raceWeapSkill = 1;
        otherRaceWeapSkill = 2;
    else
        raceWeapSkill = 2;
        otherRaceWeapSkill = 1;
    end

    BIS_LibExtraTip:AddLine(frame," ",r,g,b,true);
    BIS_LibExtraTip:AddLine(frame,"# BIS-Classic:",r,g,b,true);
    BIS_LibExtraTip:AddDoubleLine(frame,"Class - Spec", "P1 > P2 > P3 > P4 > P5 > P6" ,r,g,b, r,g,b, true);

    local classTable = {};
    local specTable = {};
    if spec == "Unknown" then
        return;
    end

    if frame:GetName() == "GameTooltip" then                    
        classTable[1] = CLASS_IDX[class];        
    else
        classTable = CLASS_ID;        
    end

    for index, idClass in ipairs(classTable) do
        if frame:GetName() == "GameTooltip" then
            specTable[1] = BIS_specsFileToSpecs[spec][2];
        else
            specTable = BIS_dataSpecs[idClass].VALUE;
        end
        local color = RAID_CLASS_COLORS[C_CreatureInfo.GetClassInfo(idClass).classFile];
        for idSpec, value in ipairs(specTable) do
            hasWeapSkill = false;
            for i=1, 6 do
                if math.floor(BIS_ITEMS[itemId].Phase) > i then                    
                    positions[i] = "N/A";
                    positionsWeapSkill[i] = "N/A";
                    positionsOffhand[i] = "N/A";
                    positionsOHWeapSkill[i] = "N/A";
                else                    
                    positions[i] = 1;
                    positionsWeapSkill[i] = 1;
                    positionsOffhand[i] = 1;
                    positionsOHWeapSkill[i] = 1;
                end
            end
            found = false;
            foundOH = false;            

            bisList = SearchBis(faction, nil, idClass, 6, idSpec, invSlot, twoHands, BestInSlotClassicDB.filter.raid, BestInSlotClassicDB.filter.worldboss, BestInSlotClassicDB.filter.pvp, BestInSlotClassicDB.filter.pvprank - 4, nil);
            if bisList[invSlot] ~= nil then
                for idx, bisLink in pairs(bisList[invSlot]) do                
                    if bisLink.ItemId == itemId and bisLink.SuffixId == suffixId then                                                
                        if bisLink.Races ~= nil and containsValue(bisLink.Races, raceWeapSkill) then
                            hasWeapSkill = true;
                            foundWeapSkill = true;
                        elseif bisLink.Races == nil or (bisLink.Races ~= nil and not containsValue(bisLink.Races, raceWeapSkill) and not containsValue(bisLink.Races, otherRaceWeapSkill)) then                            
                            found = true;
                        end
                    end                    
                    if not found then
                        phase = math.floor(BIS_ITEMS[bisLink.ItemId].Phase);
                        if phase == 0 then
                            phase = 1;
                        end
                        for p = phase, 6 do                            
                            if itemPhase <= p and bisLink.Races == nil then                                
                                positions[p] = positions[p] + 1;                                
                            elseif itemPhase <= p and bisLink.Races ~= nil and not containsValue(bisLink.Races, raceWeapSkill) and not containsValue(bisLink.Races, otherRaceWeapSkill) then                                
                                positions[p] = positions[p] + 1;
                            end                            
                        end
                    end
                    if not foundWeapSkill then
                        phase = math.floor(BIS_ITEMS[bisLink.ItemId].Phase);
                        if phase == 0 then
                            phase = 1;
                        end
                        for p = phase, 6 do                                                        
                            if itemPhase <= p and bisLink.Races ~= nil and containsValue(bisLink.Races, raceWeapSkill) then                                
                                positionsWeapSkill[p] = positionsWeapSkill[p] + 1;
                            end
                        end
                    end  
                end                       
            end   
            -- Checking off-hand
            if invSlot == 16 and not twoHands and containsValue({1, 3, 4}, idClass) and bisList[17] ~= nil then                
                for idx, bisLink in pairs(bisList[17]) do                    
                    if bisLink.ItemId == itemId and bisLink.SuffixId == suffixId then
                        if bisLink.ItemId == itemId and bisLink.SuffixId == suffixId then                        
                            if bisLink.Races ~= nil and containsValue(bisLink.Races, raceWeapSkill) then
                                hasWeapSkill = true;
                                foundOHWeapSkill = true;
                            elseif bisLink.Races == nil or (bisLink.Races ~= nil and not containsValue(bisLink.Races, raceWeapSkill) and not containsValue(bisLink.Races, otherRaceWeapSkill)) then
                                foundOH = true;
                            end
                        end              
                    end
                    if not foundOH then
                        phase = math.floor(BIS_ITEMS[bisLink.ItemId].Phase);
                        if phase == 0 then
                            phase = 1;
                        end
                        for p = phase, 6 do                            
                            if itemPhase <= p and bisLink.Races == nil then                                
                                positionsOffhand[p] = positionsOffhand[p] + 1;                                
                            elseif itemPhase <= p and bisLink.Races ~= nil and not containsValue(bisLink.Races, raceWeapSkill) and not containsValue(bisLink.Races, otherRaceWeapSkill) then                                
                                positionsOffhand[p] = positionsOffhand[p] + 1;
                            end                            
                        end
                    end
                    if not foundOHWeapSkill then
                        phase = math.floor(BIS_ITEMS[bisLink.ItemId].Phase);
                        if phase == 0 then
                            phase = 1;
                        end
                        for p = phase, 6 do                                                        
                            if itemPhase <= p and bisLink.Races ~= nil and containsValue(bisLink.Races, raceWeapSkill) then                                
                                positionsOHWeapSkill[p] = positionsOHWeapSkill[p] + 1;
                            end
                        end
                    end                                   
                end                       
            end
            if found or foundOH then
                -- Special handling for warriors.
                if idClass == 1 and invSlot == 10 then                    
                    -- Gloves.  
                    if (positions[1] - 1) > 0 then                                    
                        BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - MH - ("..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", (positions[1] - 1).." > "..(positions[2] - 1).." > "..(positions[3] - 1).." > "..(positions[4] - 1).." > "..(positions[5] - 1).." > "..(positions[6] - 1), color.r, color.g, color.b, color.r, color.g, color.b, true);                                                                            
                    end
                    BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - MH - (Not "..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positions[1].." > "..positions[2].." > "..positions[3].." > "..positions[4].." > "..positions[5].." > "..positions[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                elseif idClass == 1 and invSlot == 16 then
                    -- MainHand and OffHand.
                    if hasWeapSkill then
                        if found then
                            if not twoHands then
                                BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - MH - ("..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positionsWeapSkill[1].." > "..positionsWeapSkill[2].." > "..positionsWeapSkill[3].." > "..positionsWeapSkill[4].." > "..positionsWeapSkill[5].." > "..positionsWeapSkill[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                            else
                                BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - ("..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positionsWeapSkill[1].." > "..positionsWeapSkill[2].." > "..positionsWeapSkill[3].." > "..positionsWeapSkill[4].." > "..positionsWeapSkill[5].." > "..positionsWeapSkill[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                            end
                        end
                        if foundOH then                            
                            BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - OH - ("..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positionsOHWeapSkill[1].." > "..positionsOHWeapSkill[2].." > "..positionsOHWeapSkill[3].." > "..positionsOHWeapSkill[4].." > "..positionsOHWeapSkill[5].." > "..positionsOHWeapSkill[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                                            
                        end
                    end
                    if found then
                        if not twoHands then
                            BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - MH - (Not "..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positions[1].." > "..positions[2].." > "..positions[3].." > "..positions[4].." > "..positions[5].." > "..positions[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                        else
                            BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - (Not "..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positions[1].." > "..positions[2].." > "..positions[3].." > "..positions[4].." > "..positions[5].." > "..positions[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                        end
                    end
                    if foundOH then                        
                        BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - OH - (Not "..C_CreatureInfo.GetRaceInfo(raceWeapSkill).raceName..") ", positionsOffhand[1].." > "..positionsOffhand[2].." > "..positionsOffhand[3].." > "..positionsOffhand[4].." > "..positionsOffhand[5].." > "..positionsOffhand[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                    end
                elseif containsValue({3, 4}, idClass) and invSlot == 16 then
                    -- Hunter MainHand and OffHand.
                    if found then
                        if not twoHands then
                            BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - MH", positions[1].." > "..positions[2].." > "..positions[3].." > "..positions[4].." > "..positions[5].." > "..positions[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                        else
                            BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec], positions[1].." > "..positions[2].." > "..positions[3].." > "..positions[4].." > "..positions[5].." > "..positions[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                        end
                    end
                    if foundOH then                        
                        BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec].." - OH", positionsOffhand[1].." > "..positionsOffhand[2].." > "..positionsOffhand[3].." > "..positionsOffhand[4].." > "..positionsOffhand[5].." > "..positionsOffhand[6], color.r, color.g, color.b, color.r, color.g, color.b, true);                
                    end
                else
                    BIS_LibExtraTip:AddDoubleLine(frame, "|T"..BIS_dataSpecs[idClass].ICON[1]..":14:14".."|t - "..BIS_dataSpecs[idClass].SPEC[idSpec], positions[1].." > "..positions[2].." > "..positions[3].." > "..positions[4].." > "..positions[5].." > "..positions[6], color.r, color.g, color.b, color.r, color.g, color.b, true);
                end                
            end
        end        
    end

end