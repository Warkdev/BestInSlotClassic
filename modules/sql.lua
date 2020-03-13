-- Faking SQL search.
function table_invert(t)
    local s = {}
    for k, v in pairs(t) do s[v] = k end
    return s
end

function containsValue(t, value)  
  for k, v in pairs(t) do
    if t[k] == value then
      return true;
    end
  end
  return false;
end

function LoadAllItems()
  for k, value in pairs(BIS_LINKS) do
    item = Item:CreateFromItemID(value.ItemId);
  end
end

function GetItemPosition(faction, itemId, phase, invSlot)
  local result = {};

  local match;
  for idx, value in pairs(BIS_LINKS) do
    match = true;

    -- Checking if faction must be checked either from the search or from the table.
    if faction ~= nil and BIS_ITEMS[value.ItemId].Faction ~= nil and not(containsValue(BIS_ITEMS[value.ItemId].Faction, faction)) then            
      match = false;
    end

    if match and BIS_ITEMS[value.ItemId] ~= nil and (BIS_ITEMS[value.ItemId].Phase > phase) then
      -- bis_log("One of the mandatory argument does not match", DEBUG);      
      match = false;
    end

    if match and value.ItemId ~= itemId then      
      match = false
    end

    if match then
      table.insert(result, value);
    end
  end

  return result;
end

function SearchBisEnchant(class, phase, spec, invSlot, raid, twoHands)
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
      --bis_log("InvSlot does not match", DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= class or value.SpecId ~= spec) then      
      --bis_log("One of the mandatory argument does not match (ClassId or SpecId)", DEBUG);      
      match = false;
    end
    
    if match and BIS_ENCHANT[value.EnchantId] ~= nil and (BIS_ENCHANT[value.EnchantId].Phase > phase) then
      --bis_log("One of the mandatory argument does not match (Phase)", DEBUG);      
      match = false;
    end

    -- Filter on raid enchants.    
    if match and not raid and BIS_ENCHANT[value.EnchantId] ~= nil and BIS_ENCHANT[value.EnchantId].Raid then
      -- bis_log("Two-Hands weapons", DEBUG);      
      match = false
    end

    -- Filter on Two-Hands weapons.
    if match and BIS_ENCHANT[value.EnchantId] ~= nil and BIS_ENCHANT[value.EnchantId].Slot == 16 and BIS_ENCHANT[value.EnchantId].TwoHands ~= twoHands then
      -- bis_log("Two-Hands weapons", DEBUG);      
      match = false
    end

    -- Filter off-hand enchants when two-hands is true.
    if match and twoHands and value.Slot == 17 then
      -- bis_log("Off-Hand weapons", DEBUG);
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
    for priority = 1, 20, 1 do 
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

function SearchBis(faction, race, class, phase, spec, invSlot, twoHands, raid, worldBoss, pvp, pvpRank)
  -- Temporary table with matching records.
  local temp = {};
  local result = {};
  local empty = true;
  local slot;

  for i = 1, table.getn(INVSLOT_IDX), 1 do
    temp[i] = {};
    result[i] = {};
  end

  local match = true;

  for k, value in pairs(BIS_LINKS) do    
    match = true;
    
    -- Checking if faction must be checked either from the search or from the table.
    if faction ~= nil and BIS_ITEMS[value.ItemId].Faction ~= nil and not(containsValue(BIS_ITEMS[value.ItemId].Faction, faction)) then      
      match = false;
    end

    -- Checking if race must be checked either from the search of from the table.    
    if match and race ~= nil and value.Races ~= nil and not(containsValue(value.Races, race)) then      
      --bis_log("Race does not match", DEBUG);
      match = false;
    end

    if match and invSlot ~= nil and BIS_ITEMS[value.ItemId].Slot ~= invSlot then
      -- bis_log("InvSlot does not match", DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= class or value.SpecId ~= spec) then      
      -- bis_log("One of the mandatory argument does not match", DEBUG);      
      match = false;
    end
    
    if match and BIS_ITEMS[value.ItemId] ~= nil and (BIS_ITEMS[value.ItemId].Phase > phase) then
      -- bis_log("One of the mandatory argument does not match", DEBUG);      
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

    if match then             
      empty = false;
      if(BIS_ITEMS[value.ItemId] ~= nil) then
        if(value.OffHand and BIS_ITEMS[value.ItemId].Slot == 16) then
          -- One-Hand weapons are flagged as "off-hand".
          table.insert(temp[BIS_ITEMS[value.ItemId].Slot+1], value.Priority, value);
        else
          table.insert(temp[BIS_ITEMS[value.ItemId].Slot], value.Priority, value);
        end        
      end      
    end
  end
  
  -- Now, trimming table to remove gaps.  
  for slot, value in pairs(temp) do    
    for priority = 1, 20, 1 do 
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