BISLocale = {};
BISLocale.locale = {};
BIS_LangNameLookup = {};
BIS_LangQuestLookup = {};
BIS_LangObjectLookup = {};

local locale = 'enUS';
local gender = UnitSex("player");

function BIS_GetLocalizedMapName(id)
    if id == nil or id == 0 then
        return "Unknown";
    end

    local info = C_Map.GetMapInfo(id);
    if info ~= nil then
        return info.name;
    end

    return GetRealZoneText(id);    
end

function BIS_GetLocalizedFactionName(id)
    if id == nil or id == 0 then
        return "Unknown";
    end

    local name = GetFactionInfoByID(id);
    return name;
end

function BIS_GetLocalizedReputationLevel(level)
    if gender == 2 then
        if level == 5 then
            return FACTION_STANDING_LABEL5;
        elseif level == 6 then
            return FACTION_STANDING_LABEL6;
        elseif level == 7 then
            return FACTION_STANDING_LABEL7;            
        elseif level == 8 then
            return FACTION_STANDING_LABEL8;
        end
    elseif gender == 3 then
        if level == 5 then
            return FACTION_STANDING_LABEL5_FEMALE;
        elseif level == 6 then
            return FACTION_STANDING_LABEL6_FEMALE;
        elseif level == 7 then
            return FACTION_STANDING_LABEL7_FEMALE;            
        elseif level == 8 then
            return FACTION_STANDING_LABEL8_FEMALE;
        end
    end
end

function BIS_FallbackLocale(lang)    
    if not lang then
        return 'enUS';
    end

    if BISLocale.locale[lang] then        
        return lang;        
    elseif lang == 'enGB' then
        return 'enUS';
    elseif lang == 'enCN' then
        return 'zhCN';
    elseif lang == 'enTW' then
        return 'zhCN';
    elseif lang == 'esMX' then
        return 'esES';
    elseif lang == 'ptPT' then
        return 'ptBR';
    else
        return 'enUS';
    end
end

function BIS_SetUILocale(lang)    
    if lang then        
        locale = BIS_FallbackLocale(lang);
    else        
        locale = BIS_FallbackLocale(GetLocale());        
    end
end

function BIS_GetUILocale()
    return locale;
end