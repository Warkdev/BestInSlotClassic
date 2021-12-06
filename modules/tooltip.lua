BIS_TOOLTIP = nil;

local iconRacePath = "Interface\\Glues\\CHARACTERCREATE\\UI-CharacterCreate-Races";

local function iconOffset(col, row)
	local offsetString = (col * 64 + iconCutoff) .. ":" .. ((col + 1) * 64 - iconCutoff)
	return offsetString .. ":" .. (row * 64 + iconCutoff) .. ":" .. ((row + 1) * 64 - iconCutoff)
end

local function enrichRecipeSource(recipeId, icon)        
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
                BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." (Unknown)");
            else
                BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." ("..npc.Chance.."%)");
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
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." (Unknown) - Unknown price ");
                    else                        
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." ("..BIS:GetLocalizedFactionName(recipe.FactionId).." - "..BIS:GetLocalizedReputationLevel(recipe.ReputationLevel)..") - Unknown price ");                        
                    end
                else
                    if recipe.FactionId == 0 then
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." - "..GetMoneyString(recipe.Price, true));
                    else                        
                        BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." ("..BIS:GetLocalizedFactionName(recipe.FactionId).." - "..BIS:GetLocalizedReputationLevel(recipe.ReputationLevel)..") - "..GetMoneyString(recipe.Price, true));                        
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
                
        if C_QuestLog.IsQuestFlaggedCompleted(selectedQuest.Id) then            
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(selectedQuest.Zone).." - "..BIS:GetLocalizedQuestName(selectedQuest.Id).." ("..COMPLETE..")");
        else
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t"..BIS:GetLocalizedMapName(selectedQuest.Zone).." - "..BIS:GetLocalizedQuestName(selectedQuest.Id));
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
            BIS_TOOLTIP:AddLine("|T"..icon..":"..bis_defaultIconSize.."|t "..BIS:GetLocalizedMapName(container.Zone).." - "..BIS:GetLocalizedObjectName(container.Id).." ("..container.Chance.."%)");
        end             
    end
end

function BIS:OnTooltipSetSpell(frame)    
    local name, EnchantId = frame:GetSpell();
        
    BIS_TOOLTIP:AddLine("|T"..PROFESSIONS["Enchanting"]..":"..bis_defaultIconSize.."|t "..PROFESSIONS_NAME["Enchanting"].." ("..BIS_ENCHANT[EnchantId].Level..")");    
    if BIS_ENCHANT[EnchantId].Recipe == nil or BIS_ENCHANT[EnchantId].Recipe == 0 then
        BIS_TOOLTIP:AddLine("|T134327:"..bis_defaultIconSize.."|t "..MINIMAP_TRACKING_TRAINER_PROFESSION);
    else
        enrichRecipeSource(BIS_ENCHANT[EnchantId].Recipe, "134327");
    end

    BIS_TOOLTIP:Show();
end

function BIS:OnTooltipSetItem(frame)
    local name, link = frame:GetItem();
    local ItemId = tonumber(string.match(string.match(link, "item[%-?%d:]+"),"[^:]+:([^:]+)"));        

    local itemInfo = BIS_ITEMS[ItemId];
    local gender = UnitSex("player");
              
    local BIS_tableNPCS=BIS_LangNameLookup[BIS:GetUILocale()];
    local BIS_tableQuests=BIS_LangQuestLookup[BIS:GetUILocale()];
    local BIS_tableObjects=BIS_LangObjectLookup[BIS:GetUILocale()];

    if itemInfo == nil then
        BIS:logmsg("Error while generating the tooltip for the ItemId "..ItemId, LVL_DEBUG);
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
                    BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." (Unknown)");
                else
                    BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." ("..npc.Chance.."%)");
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
                            BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." (Unknown) - Unknown price ");
                        else
                            if itemInfo.PvPRank ~= 0 then
                                BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." (R"..itemInfo.PvPRank..") - Unknown price ");
                            else
                                BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." ("..BIS:GetLocalizedFactionName(factionId).." - "..BIS:GetLocalizedReputationLevel(itemInfo.ReputationLevel)..") - Unknown price ");
                            end
                        end
                    else
                        if itemInfo.PvPRank == 0 and factionId == 0 then
                            BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." - "..GetMoneyString(itemInfo.Price, true));
                        else
                            if itemInfo.PvPRank ~= 0 then
                                BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." (R"..itemInfo.PvPRank..") - "..GetMoneyString(itemInfo.Price, true));
                            else
                                BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(npc.Zone).." - "..BIS:GetLocalizedNPCName(npc.Id).." ("..BIS:GetLocalizedFactionName(factionId).." - "..BIS:GetLocalizedReputationLevel(itemInfo.ReputationLevel)..") - "..GetMoneyString(itemInfo.Price, true));
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
                           
            if selectedQuest ~= nil and C_QuestLog.IsQuestFlaggedCompleted(selectedQuest.Id) then                
                BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(selectedQuest.Zone).." - "..BIS:GetLocalizedQuestName(selectedQuest.Id).." ("..COMPLETE..")");                                    
            elseif selectedQuest ~= nil then                
                BIS_TOOLTIP:AddLine(BIS:GetLocalizedMapName(selectedQuest.Zone).." - "..BIS:GetLocalizedQuestName(selectedQuest.Id));                
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
                BIS_TOOLTIP:AddLine("|T"..GetItemIcon(16883)..":"..bis_defaultIconSize.."|t "..BIS:GetLocalizedMapName(container.Zone).." - "..BIS:GetLocalizedObjectName(container.Id).." ("..container.Chance.."%)");                
            end                                    
        end        
    end

    if ItemId == 11622 then
        -- Lesser Arcanum of Rumination

        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(4463).." - "..BIS:GetLocalizedNPCName(9836).." - "..BIS:GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS:GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11752)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11752).." - "..BIS:GetLocalizedMapName(230).." - "..BIS:GetLocalizedObjectName(160845).." (49%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11732)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11732));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8424)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(8424).." - "..BIS:GetLocalizedMapName(1419).." - "..BIS:GetLocalizedQuestName(2603));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11642 then
        -- Lesser Arcanum of Constitution.
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(4481).." - "..BIS:GetLocalizedNPCName(9836).." - "..BIS:GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS:GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(8411)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(8411).." - "..BIS:GetLocalizedMapName(1419).." - "..BIS:GetLocalizedQuestName(2583));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11733)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11733));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11952).." - "..BIS:GetLocalizedMapName(1448));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11643 then
        -- Lesser Arcanum of Tenacity
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(4482).." - "..BIS:GetLocalizedNPCName(9836).." - "..BIS:GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS:GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11753)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11753).." - "..BIS:GetLocalizedMapName(230).." - "..BIS:GetLocalizedObjectName(160845).." (36%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11734)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11734));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11564)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11564).." - |T"..GetItemIcon(11186)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t -"..BIS:GetLocalizedMapName(1449).." - "..BIS:GetLocalizedObjectName(164956));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11644 then
        -- Lesser Arcanum of Resilience
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(4483).." - "..BIS:GetLocalizedNPCName(9836).." - "..BIS:GetLocalizedMapName(1428));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS:GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11751)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11751).." - "..BIS:GetLocalizedMapName(230).." - "..BIS:GetLocalizedObjectName(160845).." (43%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11736)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11736));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11567)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11567).." - |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11188)..":"..bis_defaultIconSize.."|t -"..BIS:GetLocalizedMapName(1449).." - "..BIS:GetLocalizedObjectName(164957));        
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 11645 or ItemId == 11646 or ItemId == 11647 or ItemId == 11648 or ItemId == 11649 then
        -- Lesser Arcanum of Voracity (+8 stat)
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(4484).." - "..BIS:GetLocalizedNPCName(9836).." - "..BIS:GetLocalizedMapName(1428));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11754)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11754).." - "..BIS:GetLocalizedMapName(230).." (5%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11951)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11951).." - "..BIS:GetLocalizedMapName(1448));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11737)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11737));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11563)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(11563).." - |T"..GetItemIcon(11185)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(11184)..":"..bis_defaultIconSize.."|t -"..BIS:GetLocalizedMapName(1449).." - "..BIS:GetLocalizedObjectName(164957));        
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));
    elseif ItemId == 18329 then
        -- Arcanum of Rapidity
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(7483).." - "..BIS:GetLocalizedNPCName(14368).." - "..BIS:GetLocalizedMapName(429));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS:GetLocalizedMapName(230).." (5%)");        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18332)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18332));        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12938)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(12938).." - "..BIS:GetLocalizedMapName(1423).." - "..BIS:GetLocalizedObjectName(176213));
    elseif ItemId == 18330 then
        -- Arcanum of Focus
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(7484).." - "..BIS:GetLocalizedNPCName(14368).." - "..BIS:GetLocalizedMapName(429));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS:GetLocalizedMapName(230).." (5%)");        
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 4 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18333)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18333));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(12753)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(12753).." - "..BIS:GetLocalizedMapName(289).." (5%)");
    elseif ItemId == 18331 then
        -- Arcanum of Protection
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(7485).." - "..BIS:GetLocalizedNPCName(14368).." - "..BIS:GetLocalizedMapName(429));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18335)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18335).." - "..BIS:GetLocalizedMapName(230).." (5%)");   
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(14344)..":"..bis_defaultIconSize.."|t 2 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18334)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(14344));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(11952)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(11952).." - "..BIS:GetLocalizedMapName(329).." - "..BIS:GetLocalizedNPCName(8545).." (25%)");
    elseif ItemId == 22635 then
        -- Savage Guard        
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(9208).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(18330)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18330).." - "..BIS:GetLocalizedMapName(429));

        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(9209).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine(" |T"..GetItemIcon(18329)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18329).." - "..BIS:GetLocalizedMapName(429));

        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(9210).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));                
        BIS_TOOLTIP:AddLine(" |T"..GetItemIcon(18331)..":"..bis_defaultIconSize.."|t 1 "..GetItemInfo(18331).." - "..BIS:GetLocalizedMapName(429));        
    elseif ItemId == 22636 or ItemId == 22638 then
        -- Ice Guard and Shadow Guard
        if ItemId == 22636 then
            BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(9211).." - "..BIS:GetLocalizedNPCName(16133).." - "..BIS:GetLocalizedMapName(1423));
        else
            BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(9213).." - "..BIS:GetLocalizedNPCName(16133).." - "..BIS:GetLocalizedMapName(1423));            
        end
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS["COMPLETED"]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22524)..":"..bis_defaultIconSize.."|t 10 "..GetItemInfo(22524).." - "..BIS:GetLocalizedMapName(1423));
        BIS_TOOLTIP:AddLine(GetMoneyString(300000));    
    elseif ItemId == 17182 then
        -- Sulfuras
        local left, right, top, bottom;
        left = 612;
        top = 224;
        right = 644;
        bottom = 256;    
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(17204)..":"..bis_defaultIconSize.."|t "..BIS:GetLocalizedMapName(409).." - "..BIS:GetLocalizedNPCName(11502).." - "..GetItemInfo(17204).." (13%)")
        BIS_TOOLTIP:AddTexture("Interface\\LootFrame\\LootToast", unpack({ left/1024, right/1024, top/256, bottom/256 }));
        BIS_TOOLTIP:AddLine("|T"..PROFESSIONS["Blacksmithing"]..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(17193)..":"..bis_defaultIconSize.."|t "..PROFESSIONS_NAME["Blacksmithing"].." - "..GetItemInfo(17193).." (300)");
    elseif ItemId == 22630 or ItemId == 22631 or ItemId == 22632 then
        -- Atiesh.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22726)..":"..bis_defaultIconSize.."|t 40 "..GetItemInfo(22726).." - "..BIS:GetLocalizedMapName(533).." (25%)");
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(9251).." : ");
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22734)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22734).." - "..BIS:GetLocalizedMapName(531).." - "..BIS:GetLocalizedNPCName(15727).." (100%)");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(22733)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22733).." - "..BIS:GetLocalizedMapName(533).." - "..BIS:GetLocalizedNPCName(15990).." (100%)");        
    elseif ItemId == 19019 then
        -- Thunderfury.
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t "..GetItemInfo(18563).." - "..BIS:GetLocalizedMapName(409).." - "..BIS:GetLocalizedNPCName(12056).." (6%)");
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(18563)..":"..bis_defaultIconSize.."|t "..GetItemInfo(18563).." - "..BIS:GetLocalizedMapName(409).." - "..BIS:GetLocalizedNPCName(12057).." (6%)");
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(7786).." :")
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19017)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19017).." - "..BIS:GetLocalizedMapName(409).." - "..BIS:GetLocalizedNPCName(11502).." (100%)");
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
            BIS_TOOLTIP:AddLine(BIS:GetLocalizedFactionName(270).." "..FACTION_STANDING_LABEL8);
        else
            BIS_TOOLTIP:AddLine(BIS:GetLocalizedFactionName(270).." "..FACTION_STANDING_LABEL8_FEMALE);
        end                    
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19858)..":"..bis_defaultIconSize.."|t 15 "..GetItemInfo(19858)..": ");
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19698)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19699)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19700)..":"..bis_defaultIconSize.."|t - "..GetItemInfo(19698)..", "..GetItemInfo(19699)..", "..GetItemInfo(19700));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19704)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19705)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19706)..":"..bis_defaultIconSize.."|t - "..GetItemInfo(19704)..", "..GetItemInfo(19705)..", "..GetItemInfo(19706));
        BIS_TOOLTIP:AddLine("  |T"..GetItemIcon(19701)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19702)..":"..bis_defaultIconSize.."|t |T"..GetItemIcon(19703)..":"..bis_defaultIconSize.."|t - "..GetItemInfo(19701)..", "..GetItemInfo(19702)..", "..GetItemInfo(19703));
    elseif ItemId == 19783 then
        -- Syncretist's Sigil
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8185).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19788 then
        -- Hoodoo Hex
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8190).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19787 then
        -- Presence of Sight
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8189).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19789 then
        -- Prophetic Aura
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8191).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));        
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19786 then
        -- Vodouisant's Vigilant Embrace
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8188).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19790 then
        -- Animist's Caress
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8192).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19782 then
        -- Presence of Might
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8184).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19784 then
        -- Death's Embrace
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8186).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    elseif ItemId == 19785 then
        -- Falcon's Call
        BIS_TOOLTIP:AddLine(BIS:GetLocalizedQuestName(8187).." - "..BIS:GetLocalizedNPCName(15042).." - "..BIS:GetLocalizedMapName(309));  
        BIS_TOOLTIP:AddTexture("Interface\\QuestFrame\\QuestTypeIcons", unpack(QUEST_TAG_TCOORDS[89]));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(22637)..":"..bis_defaultIconSize.."|t "..GetItemInfo(22637).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedNPCName(11380)..", "..BIS:GetLocalizedNPCName(11382));
        BIS_TOOLTIP:AddLine("|T"..GetItemIcon(19815)..":"..bis_defaultIconSize.."|t "..GetItemInfo(19815).." - "..BIS:GetLocalizedMapName(309).." - "..BIS:GetLocalizedObjectName(180228));    
    end    

    BIS_TOOLTIP:Show();
end

local function OnTooltipSetItem(tooltip)
    BIS:OnTooltipSetItem(tooltip);
end

local function OnTooltipSetSpell(tooltip)
    BIS:OnTooltipSetSpell(tooltip);
end

function BIS:CreateGameTooltip(name, parent)    
    local tooltip = CreateFrame( "GameTooltip", "frame"..name, parent, "GameTooltipTemplate");    
    
    tooltip:SetOwner(parent);
    tooltip:SetPoint("TOPLEFT", parent, "TOPRIGHT", 220, -13);
    
    tooltip:SetScript("OnTooltipSetItem", OnTooltipSetItem);
    tooltip:SetScript("OnTooltipSetSpell", OnTooltipSetSpell);

    return tooltip;
end

function BIS:OnGameTooltipSetItem(frame)
    if not BestInSlotClassicDB.options.bistooltip then
        return;
    end    

    local name, link = frame:GetItem();

    if link == nil then
        return;
    end

    local _, itemId, enchantId, jewelId1, jewelId2, jewelId3, jewelId4, suffixId, uniqueId,
        linkLevel, specializationID, reforgeId, unknown1, unknown2 = strsplit(":", link)    
    
    itemId = tonumber(itemId);
    suffixId = tonumber(suffixId);
    if suffixId == nil then
        suffixId = 0;
    end

    local raid = 0;
    local worldboss = 0;
    local pvp = 0;

    if BestInSlotClassicDB.filter.raid then
       raid = 1;
    end

    if BestInSlotClassicDB.filter.worldboss then
        worldboss = 1;
    end

    if BestInSlotClassicDB.filter.pvp then
        pvp = 1;
    end

    if BIS_TOOLTIP_RANKING[itemId] == nil or BIS_TOOLTIP_RANKING[itemId][suffixId] == nil or BIS_TOOLTIP_RANKING[itemId][suffixId][faction][raid][worldboss][pvp][14] == nil then
        return;
    end    

    local r,g,b = .9,.8,.5; 
    local phase = BIS_ITEMS[itemId].Phase;
    local slot = BIS_ITEMS[itemId].Slot;
    local gender = UnitSex("player") - 1;    

    BIS_LibExtraTip:AddLine(frame," ",r,g,b,true);
    BIS_LibExtraTip:AddLine(frame,"# BIS-Classic:",r,g,b,true);
    --BIS_LibExtraTip:AddDoubleLine(frame,"Class - Spec", "P1 > P2 > P3 > P4 > P5 > P6" ,r,g,b, r,g,b, true);    
    BIS_LibExtraTip:AddDoubleLine(frame,"Class - Races - Spec", "P4 > P5 > P6" ,r,g,b, r,g,b, true);    
    BIS_LibExtraTip:AddLine(frame," ",r,g,b,true);

    for key, value in pairs(BIS_TOOLTIP_RANKING[itemId][suffixId][faction][raid][worldboss][pvp][14]) do
        local color = RAID_CLASS_COLORS[C_CreatureInfo.GetClassInfo(value.classId).classFile];
        local text = "";        
        local add = false;

        if BIS_dataSpecs[value.classId].SPEC[value.specId] == nil then
            break;
        end
        
        local target = "|T"..BIS_dataSpecs[value.classId].ICON[1]..":14:14|t - ";        

        if value.races ~= nil then
            for idx, race in pairs(value.races) do
                if BIS:containsValue(BIS_races[faction], race) then                    
                    local a, b, c, d = unpack(BIS_classes[race].TEXT_COORD[gender]);
                    a = a * 256;
                    b = b * 256;
                    c = c * 256;
                    d = d * 256;
                    target = target.."|T"..iconRacePath..":14:14:0:0:256:256:"..a..":"..b..":"..c..":"..d.."|t ";                
                    add = true;
                end
            end
        else
            for idx, race in pairs(BIS_races[faction]) do                
                if BIS:containsValue(BIS_classes[race].CLASS, value.classId) then                    
                    local a, b, c, d = unpack(BIS_classes[race].TEXT_COORD[gender]);
                    a = a * 256;
                    b = b * 256;
                    c = c * 256;
                    d = d * 256;
                    target = target.."|T"..iconRacePath..":14:14:0:0:256:256:"..a..":"..b..":"..c..":"..d.."|t ";                
                    add = true;
                end
            end
            add = true;
        end

        if slot == 16 and value.offHand then
            target = target.."(OH) ";
        elseif slot == 16 then
            target = target.."(MH) ";
        end        

        target = target.."- "..BIS_dataSpecs[value.classId].SPEC[value.specId];

        if phase > 1 then
            for i = bis_currentPhaseId + 1, phase, 1 do
                text = text.."N/A > ";
            end
        end

        --if phase <= 1 then
        --    text = (value.P1).." > "..(value.P2).." > "..(value.P3).." > "..(value.P4).." > "..(value.P5).." > "..(value.P6);
        --elseif phase <= 2 then
        --    text = text..(value.P2).." > "..(value.P3).." > "..(value.P4).." > "..(value.P5).." > "..(value.P6);
        --elseif phase <= 3 then
        --    text = text..(value.P3).." > "..(value.P4).." > "..(value.P5).." > "..(value.P6);
        if phase <= 4 then
            text = text..(value.P4).." > "..(value.P5).." > "..(value.P6);
        elseif phase <= 5 then
            text = text..(value.P5).." > "..(value.P6);
        else 
            text = text..(value.P6);
        end

        if add then
            BIS_LibExtraTip:AddDoubleLine(frame, target, text, color.r, color.g, color.b, color.r, color.g, color.b, true);
        end
    end        
end