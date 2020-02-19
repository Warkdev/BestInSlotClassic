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

function SearchBis(faction, race, class, phase, spec, invSlot, twoHands, raid, worldBoss, pvp)
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
      --log("Race does not match", DEBUG);
      match = false;
    end

    if match and invSlot ~= nil and BIS_ITEMS[value.ItemId].Slot ~= invSlot then
      -- log("InvSlot does not match", DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= class or value.SpecId ~= spec) then      
      -- log("One of the mandatory argument does not match", DEBUG);      
      match = false;
    end
    
    if match and BIS_ITEMS[value.ItemId] ~= nil and (BIS_ITEMS[value.ItemId].Phase > phase) then
      -- log("One of the mandatory argument does not match", DEBUG);      
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

    -- Filter off-hand weapons when two-hands is true.
    if match and twoHands and BIS_ITEMS[value.ItemId].Slot == 17 then
      match = false
    end

    --if match and pvpRank ~= nil and value.PVPRank > pvpRank then
      -- log("PvP Rank is lower than the record required PvP Rank", DEBUG);      
--      match = false;
  --  end

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