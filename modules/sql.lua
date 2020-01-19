-- Faking SQL search.
function table_invert(t)
    local s = {}
    for k, v in pairs(t) do s[v] = k end
    return s
end

function SearchBis(faction, race, class, phase, spec, invSlot, pvpRank)
  -- Temporary table with matching records.
  local temp = {};
  local match = true;
  for k, value in pairs(BIS_LINKS) do    
    
    -- Checking if faction must be checked either from the search or from the table.
    if faction ~= nil and value.Faction ~= nil and value.Faction ~= faction then
      match = false;
    end

    -- Checking if race must be checked either from the search of from the table.
    if match and race ~= nil and value.RaceId ~= nil and value.RaceId ~= race then      
      -- log("Race does not match", DEBUG);
      match = false;
    end

    if match and invSlot ~= nil and value.InvSlotId ~= invSlot then
      -- log("InvSlot does not match", DEBUG);      
      match = false;
    end
       
    if match and (value.ClassId ~= class or value.PhaseId ~= phase or value.SpecId ~= spec) then      
      -- log("One of the mandatory argument does not match", DEBUG);      
      match = false;
    end
    
    if match and pvpRank ~= nil and value.PVPRank > pvpRank then
      -- log("PvP Rank is lower than the record required PvP Rank", DEBUG);      
      match = false;
    end

    if match then
      -- log("Found matching record ! "..value.ItemId, DEBUG);
      table.insert(temp, value);        
    end
  end
  return temp;
end