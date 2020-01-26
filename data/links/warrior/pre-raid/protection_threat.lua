local INV_SLOT_ID;
local PHASE_ID;
local SPEC_ID;
local CLASS_ID = 1;

---------------------------------------------------------------------------- PHASE 2 PRE-RAID ---------------------------------------------------------------------
PHASE_ID = 2;

---------------------------------------------------------------------------- Protection (Threat) Spec ---------------------------------------------------------
-- Head items.
INV_SLOT_ID = 1;
SPEC_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12640, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13404, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13359, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19491, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17044, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 11933, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16733, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13066, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13397, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19083, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19084, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11726, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12895, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16730, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12936, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13400, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12966, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

-- Humans.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13963, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13162, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16737, PVPRank = 0 }    
);

-- Orcs.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13963, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13162, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16737, PVPRank = 0 }    
);

-- Others.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14551, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13963, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13162, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 16737, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13142, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13959, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19091, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18380, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16732, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14616, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13967, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11731, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17713, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13098, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13209, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13006, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18376, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 18484, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 15806, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12798, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 10837, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13105, PVPRank = 0 }    
);

-- Others
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18484, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12798, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 10837, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 14555, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19321, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12602, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18756, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18696, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 1168, PVPRank = 0 }    
);

-- Ranged items.
INV_SLOT_ID = 18;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18323, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12651, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19107, PVPRank = 0 }    
);