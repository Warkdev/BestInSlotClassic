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

-- Faking SQL search.
function table_invert(t)
    local s = {}
    for k, v in pairs(t) do s[v] = k end
    return s
end

function BIS:containsValue(t, value) 
  if t == nil then
    return true;
  end

  for k, v in pairs(t) do
    if t[k] == value then
      return true;
    end
  end
  return false;
end

function BIS:LoadAllItems()
  for k, value in pairs(BIS_LINKS) do
    item = Item:CreateFromItemID(value.ItemId);
  end
end

function BIS:SearchBisEnchant(class, phase, spec, invSlot, raid, twoHands)
  -- Temporary table with matching records.
  local temp = {};
  local result = {};
  local empty = true;
  local slot;

  for i = 1, table.getn(INVSLOT_IDX), 1 do
    temp[i] = {};
    result[i] = {};
  end

  local match;

  for k, value in pairs(BIS_ENCHANT_LINKS) do
    match = true;
    
    if match and invSlot ~= nil and BIS_ENCHANT_LINKS[value.EnchantId].Slot ~= invSlot then
      --BIS:logmsg("InvSlot does not match", LVL_DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= class or value.SpecId ~= spec) then      
      --BIS:logmsg("One of the mandatory argument does not match (ClassId or SpecId)", LVL_DEBUG);      
      match = false;
    end
    
    if match and BIS_ENCHANT[value.EnchantId] ~= nil and (BIS_ENCHANT[value.EnchantId].Phase > phase) then
      --BIS:logmsg("One of the mandatory argument does not match (Phase)", LVL_DEBUG);      
      match = false;
    end

    -- Filter on raid enchants.    
    if match and not raid and BIS_ENCHANT[value.EnchantId] ~= nil and BIS_ENCHANT[value.EnchantId].Raid then
      -- BIS:logmsg("Two-Hands weapons", LVL_DEBUG);      
      match = false
    end

    -- Filter on Two-Hands weapons.
    if match and BIS_ENCHANT[value.EnchantId] ~= nil and BIS_ENCHANT[value.EnchantId].Slot == 16 and BIS_ENCHANT[value.EnchantId].TwoHands ~= twoHands then
      -- BIS:logmsg("Two-Hands weapons", LVL_DEBUG);      
      match = false
    end

    -- Filter off-hand enchants when two-hands is true.
    if match and twoHands and value.Slot == 17 then
      -- BIS:logmsg("Off-Hand weapons", LVL_DEBUG);
      match = false
    end

    if match then             
      empty = false;
      if(BIS_ENCHANT[value.EnchantId] ~= nil) then        
        table.insert(temp[value.Slot], value.Priority, value);        
      end      
    end
  end  

  -- Now, trimming table to remove gaps.  
  for slot, value in pairs(temp) do    
    for priority = 1, 100, 1 do 
      if temp[slot][priority] ~= nil then
        table.insert(result[slot], temp[slot][priority]);
      end
    end
  end

  if empty then
    return {};
  end

  return result;
end

function BIS:SearchBis(faction, race, classSearch, phase, specSearch, invSlot, twoHands, raid, worldBoss, pvp, pvpRank, itemId)
  -- Temporary table with matching records.
  local temp = {};
  local result = {};
  local empty = true;
  local slot;  

  if (faction == "Alliance" and class == 7) or (faction == "Horde" and class == 2) then
    return result;    
  end  

  if invSlot == nil then
    for i = 1, table.getn(INVSLOT_IDX), 1 do
      temp[i] = {};
      result[i] = {};
    end
  else
    temp[invSlot] = {};
    result[invSlot] = {};
    if invSlot == 16 and not twoHands then
      temp[17] = {};
      result[17] = {};
    end
  end

  local match = true;

  for k, value in pairs(BIS_LINKS) do    
    match = true;      

    -- Checking if faction must be checked either from the search or from the table.
    if match and faction ~= nil and BIS_ITEMS[value.ItemId].Faction ~= nil and not(BIS:containsValue(BIS_ITEMS[value.ItemId].Faction, faction)) then      
      match = false;
    end 

    -- Checking if race must be checked either from the search of from the table.    
    if match and race ~= nil and value.Races ~= nil and not(BIS:containsValue(value.Races, race)) then      
      --BIS:logmsg("Race does not match", LVL_DEBUG);
      match = false;
    end

    if match and invSlot ~= nil and BIS_ITEMS[value.ItemId].Slot ~= invSlot then
      -- BIS:logmsg("InvSlot does not match", LVL_DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= classSearch or value.SpecId ~= specSearch) then      
      -- BIS:logmsg("One of the mandatory argument does not match", LVL_DEBUG);      
      match = false;
    end
    
    if match and BIS_ITEMS[value.ItemId] ~= nil and (BIS_ITEMS[value.ItemId].Phase > phase) then
      -- BIS:logmsg("One of the mandatory argument does not match", LVL_DEBUG);      
      match = false;
    end

    -- Filter on Two-Hands weapons.
    if match and BIS_ITEMS[value.ItemId] ~= nil and BIS_ITEMS[value.ItemId].Slot == 16 and BIS_ITEMS[value.ItemId].TwoHands ~= twoHands then
      match = false
    end

    -- Filter on raid items.
    if match and not raid and BIS_ITEMS[value.ItemId] ~= nil and BIS_ITEMS[value.ItemId].Raid then
      match = false
    end

    -- Filter on world boss items.
    if match and not worldBoss and BIS_ITEMS[value.ItemId] ~= nil and BIS_ITEMS[value.ItemId].WorldBoss then
      match = false
    end

    -- Filter on pvp items.    
    if match and not pvp and BIS_ITEMS[value.ItemId] ~= nil and BIS_ITEMS[value.ItemId].PvP then
      match = false
    end

    -- Filter on pvp ranks.
    if match and pvp and BIS_ITEMS[value.ItemId] ~= nil and BIS_ITEMS[value.ItemId].PvP and BIS_ITEMS[value.ItemId].PvPRank > pvpRank then
      match = false
    end

    -- Filter off-hand weapons when two-hands is true.
    if match and twoHands and BIS_ITEMS[value.ItemId].Slot == 17 then
      match = false
    end

    -- Checking if you have an item equipped for your class/spec only.
    if not match and BestInSlotClassicDB.filter.soulboundBis and IsEquippedItem(value.ItemId) and value.SpecId == specSearch and value.ClassId == classSearch and BIS_ITEMS[value.ItemId].Phase <= phase and BIS:containsValue(value.Races, race) and BIS:containsValue(BIS_ITEMS[value.ItemId].Faction, faction) and (BIS_ITEMS[value.ItemId].Slot ~= 16 or BIS_ITEMS[value.ItemId].TwoHands == twoHands) then             
      match = true;      
    end

    if match then             
      empty = false;
      if(BIS_ITEMS[value.ItemId] ~= nil) then
        if(value.OffHand and BIS_ITEMS[value.ItemId].Slot == 16) then
          -- One-Hand weapons are flagged as "off-hand".
          local inserted = false;
          local idx = value.Priority;
          while not inserted do          
            if temp[BIS_ITEMS[value.ItemId].Slot+1][idx] == nil or temp[BIS_ITEMS[value.ItemId].Slot+1][idx].Priority > value.Priority then
              table.insert(temp[BIS_ITEMS[value.ItemId].Slot+1], idx, value);
              if itemId ~= nil and value.ItemId == itemId then                
                break;
              end
              inserted = true;
            else
              idx = idx + 1;
            end
          end
        else
          local inserted = false;
          local idx = value.Priority;
          while not inserted do          
            if temp[BIS_ITEMS[value.ItemId].Slot][idx] == nil or temp[BIS_ITEMS[value.ItemId].Slot][idx].Priority > value.Priority then
              table.insert(temp[BIS_ITEMS[value.ItemId].Slot], idx, value);
              if itemId ~= nil and value.ItemId == itemId then                
                break;
              end
              inserted = true;
            else
              idx = idx + 1;
            end
          end
        end        
      end      
    end
  end
  
  -- Now, trimming table to remove gaps.  
  for slot, value in pairs(temp) do    
    for priority = 1, 100, 1 do 
      if temp[slot][priority] ~= nil then
        table.insert(result[slot], temp[slot][priority]);
      end
    end
  end

  if empty then
    return {};
  end

  return result;
end