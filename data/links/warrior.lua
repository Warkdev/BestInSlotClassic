-- This file is mapping Warrior BIS according to definitions within links.lua file.
-- Warrior special values:
-- Spec Fury = 1
-- Spec Protection (Threat) = 2
-- Spec Protection (Mitigation) = 3
-- Spec Resist Fire = 4
local INV_SLOT_ID;
local PHASE_ID;
local SPEC_ID;
local CLASS_ID = 1;

---------------------------------------------------------------------------- Resist Fire Spec ---------------------------------------------------------------------
SPEC_ID = 4;
PHASE_ID = 2;

-- Head items.
INV_SLOT_ID = 1;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16983, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16866, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12952, PVPRank = 0 }
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS,
    { Faction = nil, RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18404, PVPRank = 0 }
);

table.insert(BIS_LINKS,
    { Faction = nil, RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16309, PVPRank = 0 }
);

-- Shoulders items.
INV_SLOT_ID = 3;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19139, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16988, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15055, PVPRank = 0 }
);

-- Back items.
INV_SLOT_ID = 15;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18811, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15138, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12905, PVPRank = 0 }
);

-- Chests items.
INV_SLOT_ID = 5;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12895, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16865, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17014, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11767, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19164, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16863, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11814, PVPRank = 0 }
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16989, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13526, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17013, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18861, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15054, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20039, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18806, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18047, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18399, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11978, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11978, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13164, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18638, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 2802, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18638, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 2802, PVPRank = 0 }    
);

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
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17044, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11933, PVPRank = 0 }    
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

-- Off ring items.
INV_SLOT_ID = 12;

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
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13209, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13209, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13209, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13209, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13006, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18376, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18484, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 15806, PVPRank = 0 }    
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

---------------------------------------------------------------------------- Protection (Mitigation) Spec ---------------------------------------------------------
-- Head items.
INV_SLOT_ID = 1;
SPEC_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18313, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16731, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11746, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13091, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19534, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19538, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11755, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14552, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18493, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12557, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18511, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13397, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18495, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18503, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15413, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13394, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18754, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13951, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16735, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13072, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18383, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 14525, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13502, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14620, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13384, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12935, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14623, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15054, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14549, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13259, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18521, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11669, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18522, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13373, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11669, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18522, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13373, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17774, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17909, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17904, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18370, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 11810, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18466, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17774, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17909, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17904, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18370, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 11810, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18466, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
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
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 15806, PVPRank = 0 }    
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
    { Faction = "Horde",  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19558, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19562, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16996, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18738, PVPRank = 0 }    
);

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
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17044, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11933, PVPRank = 0 }    
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

-- Off ring items.
INV_SLOT_ID = 12;

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
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13209, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13209, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13209, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13209, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13006, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18376, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18484, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 15806, PVPRank = 0 }    
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

----------------------------------------------------------------------------  Fury DW Spec ---------------------------------------------------------
SPEC_ID = 1;

-- Head items.
INV_SLOT_ID = 1;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12640, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12587, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13404, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19491, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11933, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17044, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12927, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18374, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15051, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13340, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11626, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13397, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11726, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14637, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12757, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13400, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12936, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12966, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

-- Others than Humans / Orc.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14551, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13957, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13162, PVPRank = 0 }    
);

-- Human / Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13957, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13162, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13959, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13142, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18393, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15062, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18380, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12555, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14616, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13967, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13217, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 17713, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13217, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 17713, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12940, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 2244, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 811, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13286, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12527, PVPRank = 0 }    
);

-- Others
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12940, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 2244, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 811, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13286, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 12527, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;
-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12939, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12590, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 871, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13015, PVPRank = 0 }    
);

-- Others
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12939, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 871, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13015, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 12590, PVPRank = 0 }    
);

-- Ranged items.
INV_SLOT_ID = 18;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19107, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12653, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18323, PVPRank = 0 }    
);

----------------------------------------------------------------------------  Fury 2H Spec ---------------------------------------------------------
SPEC_ID = 5;

-- Head items.
INV_SLOT_ID = 1;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12640, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12587, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13404, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19491, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11933, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17044, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12927, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18374, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15051, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13340, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11626, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13397, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11726, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14637, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12757, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13400, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12936, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12966, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

-- Others than Humans / Orc.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14551, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13957, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13162, PVPRank = 0 }    
);

-- Human / Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13957, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13162, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13959, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13142, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18393, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15062, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18380, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12555, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14616, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13967, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13217, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 17713, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13217, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 17713, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19323, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12592, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18520, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18420, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12784, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19169, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18538, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11931, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13285, PVPRank = 0 }    
);

-- Others
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12592, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18520, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12784, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19169, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18538, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 11931, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13285, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;

-- Ranged items.
INV_SLOT_ID = 18;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19107, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12653, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 9, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18323, PVPRank = 0 }    
);

-------------------------------------------------------------------------- Phase 2 (11) / 3 (12) RAID ------------------------------------------------------------------------------

PHASE_ID = 11;

----------------------------------------------------------------------------  Fury DW Spec ---------------------------------------------------------
SPEC_ID = 1;

-- Head items.
INV_SLOT_ID = 1;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12640, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19372, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18817, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12587, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18404, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19491, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11933, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19349, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15051, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12927, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18374, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19436, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13340, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11626, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13397, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18541, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19405, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11726, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 14637, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19578, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19146, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12936, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12966, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

-- Others than Humans / Orc.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14551, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19143, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13957, PVPRank = 0 }    
);

-- Human / Orcs

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19143, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16863, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13957, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19137, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13959, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13142, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19402, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15052, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18380, PVPRank = 0 }
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15052, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18380, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19387, PVPRank = 0 }
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16984, PVPRank = 0 }
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19381, PVPRank = 0 }
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12555, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 14616, PVPRank = 0 }    
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18821, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19432, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19384, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 13217, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18821, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19432, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19384, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 13217, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19406, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19406, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19352, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17112, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19335, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17075, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12940, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19170, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17068, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19363, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 811, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13286, PVPRank = 0 }    
);

-- Others

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19352, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17075, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17068, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19363, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 2244, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 811, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13286, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 12527, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;
-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18832, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19351, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12939, PVPRank = 0 }    
);

-- Orcs

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19363, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17068, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 871, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18737, PVPRank = 0 }    
);

-- Others

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18832, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19363, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17068, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19351, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12939, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 871, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 8, ItemId = 13015, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 9, ItemId = 12590, PVPRank = 0 }    
);

-- Ranged items.
INV_SLOT_ID = 18;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17072, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17069, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19107, PVPRank = 0 }    
);

----------------------------------------------------------------------------  Fury 2H Spec ---------------------------------------------------------
SPEC_ID = 5;

-- Head items.
INV_SLOT_ID = 1;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12640, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19372, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18817, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12587, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18404, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19491, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11933, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19349, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 15051, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12927, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18374, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19436, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13340, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11626, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13397, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18541, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19405, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11726, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 14637, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19578, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19146, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12936, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12966, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

-- Others than Humans / Orc.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14551, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19143, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6, 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13957, PVPRank = 0 }    
);

-- Human / Orcs

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19143, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16863, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1, 2 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13957, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19137, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13959, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13142, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19402, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15052, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18380, PVPRank = 0 }
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15052, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18380, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19387, PVPRank = 0 }
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16984, PVPRank = 0 }
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19381, PVPRank = 0 }
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12555, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 14616, PVPRank = 0 }    
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18821, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19432, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19384, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 13217, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18821, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19432, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19384, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17063, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13098, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 12548, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 7, ItemId = 13217, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19406, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19406, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18537, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 744, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 19289, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13515, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 13171, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19364, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17076, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19334, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19323, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18822, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 1 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12592, PVPRank = 0 }    
);

-- Orcs

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19353, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17076, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18822, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 2 } , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12784, PVPRank = 0 }    
);

-- Others

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19364, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19353, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17076, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID + 1, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19334, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18822, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 12784, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = { 3, 4, 5, 6 , 7, 8 }, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 12592, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;

-- Ranged items.
INV_SLOT_ID = 18;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17072, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17069, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = 99, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19107, PVPRank = 0 }    
);