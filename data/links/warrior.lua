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
-- Head items.
INV_SLOT_ID = 1;
PHASE_ID = 2;
SPEC_ID = 4;
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

---------------------------------------------------------------------------- PHASE 3 PRE-RAID ---------------------------------------------------------------------
PHASE_ID = 4;

---------------------------------------------------------------------------- Protection (Threat) Spec ---------------------------------------------------------
-- Head items.
INV_SLOT_ID = 1;
SPEC_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12640, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13404, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13359, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19491, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15411, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 17044, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 16733, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13066, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13397, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19083, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19084, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 11726, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12895, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16730, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12936, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13400, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12966, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

-- Humans.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13963, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13162, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16737, PVPRank = 0 }    
);

-- Orcs.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13963, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13162, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16737, PVPRank = 0 }    
);

-- Others.
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14551, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13963, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13162, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 16737, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13142, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13959, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19091, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14554, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18380, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16732, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14616, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13967, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11731, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17713, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13098, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19325, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17713, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18500, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13098, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18466, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18466, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 20130, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11815, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13965, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 19120, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18466, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18466, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13006, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18376, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 15806, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12798, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 10837, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13105, PVPRank = 0 }    
);

-- Others
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18484, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12798, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 10837, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 14555, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19321, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12602, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18756, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18696, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 1168, PVPRank = 0 }    
);

-- Ranged items.
INV_SLOT_ID = 18;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18323, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12651, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19107, PVPRank = 0 }    
);















---------------------------------------------------------------------------- Protection (Mitigation) Spec ---------------------------------------------------------
-- Head items.
INV_SLOT_ID = 1;
SPEC_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18313, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16731, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11746, PVPRank = 0 }    
);

-- Neck items.
INV_SLOT_ID = 2;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13091, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19534, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 19538, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 11755, PVPRank = 0 }    
);

-- Shoulders items.
INV_SLOT_ID = 3;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14552, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18493, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12557, PVPRank = 0 }    
);

-- Back items.
INV_SLOT_ID = 15;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18511, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13397, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18495, PVPRank = 0 }    
);

-- Chest items.
INV_SLOT_ID = 5;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18503, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15413, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13394, PVPRank = 0 }    
);

-- Wrists items.
INV_SLOT_ID = 9;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18754, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13951, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 16735, PVPRank = 0 }    
);

-- Glove items.
INV_SLOT_ID = 10;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13072, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 18383, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 14525, PVPRank = 0 }    
);

-- Belt items.
INV_SLOT_ID = 6;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 13502, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14620, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 13384, PVPRank = 0 }    
);

-- Legs items.
INV_SLOT_ID = 7;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 12935, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 14623, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 15054, PVPRank = 0 }
);

-- Boots items.
INV_SLOT_ID = 8;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 14549, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 13259, PVPRank = 0 }    
);

table.insert(BIS_LINKS,
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18521, PVPRank = 0 }
);

-- Main ring items.
INV_SLOT_ID = 11;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11669, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18522, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13373, PVPRank = 0 }    
);

-- Off ring items.
INV_SLOT_ID = 12;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 2246, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11669, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19510, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19514, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18522, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13373, PVPRank = 0 }    
);

-- Main trinket items.
INV_SLOT_ID = 13;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17774, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17909, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17904, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18370, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 11810, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18466, PVPRank = 0 }    
);

-- Off trinket items.
INV_SLOT_ID = 14;

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 17774, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17909, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 17904, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18370, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 11810, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18466, PVPRank = 0 }    
);

-- Main Hand items.
INV_SLOT_ID = 16;

-- Humans
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19170, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 11684, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 19104, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 13006, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18376, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 1 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 15806, PVPRank = 0 }    
);

-- Orcs
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19103, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12798, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 10837, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = 2 , ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 13105, PVPRank = 0 }    
);

-- Others
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 18484, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 15806, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 12798, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 10837, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 18737, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 6, ItemId = 14555, PVPRank = 0 }    
);

-- Off Hand items.
INV_SLOT_ID = 17;
table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19321, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 12602, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18756, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 4, ItemId = 18696, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 5, ItemId = 1168, PVPRank = 0 }    
);

-- Ranged items.
INV_SLOT_ID = 18;
table.insert(BIS_LINKS, 
    { Faction = "Horde",  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19558, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = "Alliance",  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 1, ItemId = 19562, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 2, ItemId = 16996, PVPRank = 0 }    
);

table.insert(BIS_LINKS, 
    { Faction = nil,  RaceId = nil, ClassId = CLASS_ID, PhaseId = PHASE_ID, MaxPhaseId = PHASE_ID, SpecId = SPEC_ID, InvSlotId = INV_SLOT_ID, Priority = 3, ItemId = 18738, PVPRank = 0 }    
);