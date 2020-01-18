-- Basic Command Handlers File. New commands would be ideally added here.

local testItems = { 12940, 17075, 19352, 19888, 21650, 23577 };

function ShowManager(args)
    ShowManager();
end

function OpenConfigPane(args)
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
    InterfaceOptionsFrame_OpenToCategory("BestInSlotClassic");
end

local function ShowHelp(args)
    log("BestInSlotClassic usage: ", INFO);
    log("/bis : Configure the add-on", INFO);
    log("/bis loglevel <level> : Set the log level for message output, possible levels are: INFO, WARN, ERROR, DEBUG", INFO);    
    log("/bis help : Show this help", INFO);
    log("/bis reset : Reset all add-on settings", INFO);
    log("/bis settings: Define add-on general settings", INFO);        
end

function HandleLogLevel(args)
    args = args:lower();    

    local level = {
        ["info"] = function() BestInSlotClassicDB.loglevel = "INFO"; end,
        ["warn"] = function() BestInSlotClassicDB.loglevel = "WARN"; end,
        ["error"] = function() BestInSlotClassicDB.loglevel = "ERROR"; end,
        ["debug"] = function() BestInSlotClassicDB.loglevel = "DEBUG"; end
    }

    if type(level[args]) == "function" then
        level[args]();
        log("Log level set to: "..BestInSlotClassicDB.loglevel, INFO);    
    else
        log("Unknown log level "..args, INFO);
    end

    
end

function PrintVars(args)
    log("Log level: ", BestInSlotClassicDB.loglevel, INFO);
    log("Hide Minimap Icon: ", BestInSlotClassicDB.minimap.hide, INFO);
    log("Minimap Icon Position: "..BestInSlotClassicDB.minimap.minimapPos, INFO);
end

function TestPhases(args)
    -- Testing each phases items to see whether the phase is already available in-game.

    local item;
    
    for idx, value in ipairs(testItems) do        
        item = GetItemInfoInstant(value);
        log("Item "..item, DEBUG);
        if item ~= nil then
            log("Phase "..idx..": |cFF00FF00 Available|r", INFO);            
        else
            log("Phase "..idx..": |cFFFF0000 Not available|r", INFO);            
        end
    end    
    
    --[[ itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
    itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, 
    isCraftingReagent = GetItemInfo(23054); ]]--    

end

function CheckDataIntegrity(args)    
    local item;
    local info;
    local records = 0;
    local removed = 0;
    local hasError = false;
    for idx, value in pairs(BIS_ITEMS) do        
        records = records + 1;
        hasError = false;        
        item = BIS_ITEMS[idx];        
        info = item.Info;
        -- Validating data structure.
        if item.Source == "Loot" then
            if item.Zone == nil or item.Zone == "" then
                hasError = true;
                log("Item with ID "..idx.. " has missing zone.", DEBUG);
            end
            if info == nil then
                hasError = true;
                log("Item with ID "..idx.." has missing info.", DEBUG);
            else
                if info.NPC == nil or info.NPC == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing NPC info.", DEBUG);
                end
                if info.Drop == nil or info.Drop == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing Drop info.", DEBUG);
                end
            end            
        elseif item.Source == "Craft" then
            if item.Zone == nil or item.Zone == "" then
                hasError = true;
                log("Item with ID "..idx.. " has missing zone.", DEBUG);
            end
            if info == nil then
                hasError = true;
                log("Item with ID "..idx.." has missing info.", DEBUG);
            else
                if info.NPC == nil or info.NPC == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing NPC info.", DEBUG);
                end
                if info.Profession == nil or info.Profession == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing profession info.", DEBUG);
                else                    
                    if PROFESSIONS[info.Profession] == nil then                        
                        hasError = true;
                        log("Item with ID "..idx.." has wrong profession ID.", DEBUG);
                    end
                end
                if info.Level == nil or info.Level == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing Level info.", DEBUG);
                end
            end
        elseif item.Source == "Quest" then
            if item.Zone == nil or item.Zone == "" then
                hasError = true;
                log("Item with ID "..idx.. " has missing zone.", DEBUG);
            end
            if info == nil then
                hasError = true;
                log("Item with ID "..idx.." has missing info.", DEBUG);
            else
                if info.Name == nil or info.Name == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing name info.", DEBUG);
                end
            end
        elseif item.Source == "Vendor" then
            if info == nil then
                hasError = true;
                log("Item with ID "..idx.." has missing info.", DEBUG);
            else
                if info.Faction == nil or info.Faction == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing faction info.", DEBUG);
                end
                if info.Requirement == nil or info.Requirement == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing requirements info.", DEBUG);
                end
                if info.Price == nil or info.Price == "" then
                    hasError = true;
                    log("Item with ID "..idx.." has missing requirements info.", DEBUG);
                end
            end
        else
            hasError = true;
            log("Unknown source for item: "..idx, ERROR);
        end
        -- Remove the entry so that the next part can be done safely.
        if hasError then            
            removed = removed + 1;
            table.remove(ITEMS, idx);
            log("Item with ID "..idx.." has been removed from the items table.", WARN);
        end
    end
    log("Items database integrity has been checked. Total items: "..records..", Removed: "..removed.."", INFO);
end

local function Reset(args)
    ResetDefaults();
    UpdateMinimapIcon();
    log("BestInSlotClassic has been reset to default values.", DEBUG);
end

-- "Elegant" way to handle switch case in LUA.
handlers = {
    [""] = ShowManager,
    ["settings"] = OpenConfigPane,
    ["loglevel"] = HandleLogLevel,
    ["help"] = ShowHelp,    
    ["reset"] = Reset,
    ["vars"] = PrintVars,
    ["test"] = TestPhases,
    ["data"] = CheckDataIntegrity
}

-- Parser of all commands provided which should start by /bis or /bestinslot.
-- Displays help if the command is unknown.
local function HandleCommands(msg, editBox)
    local split = {};

    for substring in msg:gmatch("%S+") do        
        table.insert(split, substring);
    end    
    
    if split[1] == nil then
        msg = "";
    else
        msg = split[1];
    end

    if type(handlers[msg]) == "function" then
        handlers[msg](split[2]);
    else
        log("Unknown command: "..msg, INFO);
        handlers["help"](msg);
    end    
end

-- Slash Commands
SLASH_BIS1, SLASH_BIS2 = "/bis", "/bestinslot";
SlashCmdList["BIS"] = HandleCommands;