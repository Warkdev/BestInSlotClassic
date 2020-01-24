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

function SearchBis(faction, race, class, phase, spec, invSlot, pvpRank)
  -- Temporary table with matching records.
  local temp = {};
  local result = {};
  local empty = true;

  for i = 1, table.getn(INVSLOT_IDX), 1 do
    temp[i] = {};
    result[i] = {};
  end

  local match = true;

  for k, value in pairs(BIS_LINKS) do    
    match = true;
    
    -- Checking if faction must be checked either from the search or from the table.    
    if faction ~= nil and value.Faction ~= nil and value.Faction ~= faction then      
      match = false;
    end

    -- Checking if race must be checked either from the search of from the table.
    if match and race ~= nil and value.RaceId ~= nil and not(containsValue(value.RaceId, race)) then      
      --log("Race does not match", DEBUG);
      match = false;
    end

    if match and invSlot ~= nil and value.InvSlotId ~= invSlot then
      -- log("InvSlot does not match", DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= class or value.SpecId ~= spec) then      
      -- log("One of the mandatory argument does not match", DEBUG);      
      match = false;
    end
    
    if match and (value.PhaseId > phase or value.MaxPhaseId < phase) then
      -- log("One of the mandatory argument does not match", DEBUG);      
      match = false;
    end

    if match and pvpRank ~= nil and value.PVPRank > pvpRank then
      -- log("PvP Rank is lower than the record required PvP Rank", DEBUG);      
      match = false;
    end

    if match then             
      empty = false;      
      table.insert(temp[value.InvSlotId], value.Priority, value);      
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