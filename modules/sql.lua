-- Faking SQL search.
function table_invert(t)
    local s = {}
    for k, v in pairs(t) do s[v] = k end
    return s
end

function SearchBis(faction, race, class, phase, spec, invSlot, pvpRank)
  -- Temporary table with matching records.
  local temp = {};
  local empty = true;

  for i = 1, table.getn(INVSLOT_IDX), 1 do
    temp[i] = {};
  end

  local match = true;

  for k, value in pairs(BIS_LINKS) do    
    match = true;
    
    -- Checking if faction must be checked either from the search or from the table.    
    if faction ~= nil and value.Faction ~= nil and value.Faction ~= faction then      
      match = false;
    end

    -- Checking if race must be checked either from the search of from the table.
    if match and race ~= nil and value.RaceId ~= nil and value.RaceId ~= race then      
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
      -- log("Found matching record ! "..value.ItemId, DEBUG);
      -- Let's compare if another record already exist for that position. If so, we check the race, a matching race has always priority !
      if temp[value.InvSlotId][value.Priority] ~= nil then
        if value.RaceId == race then
          table.remove(temp[value.InvSlotId], value.priority);
          table.insert(temp[value.InvSlotId], value.Priority, value);  
        end
      else
        empty = false;
        table.insert(temp[value.InvSlotId], value.Priority, value);
      end
    end
  end
  
  if empty then
    return {};
  end
  return temp;
end