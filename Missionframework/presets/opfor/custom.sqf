/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes

opfor_officer = "OPTRE_Ins_URF_Rifleman_BR";                                          // Officer
opfor_squad_leader = "OPTRE_Ins_URF_Rifleman_BR";                                  // Squad Leader
opfor_team_leader = "OPTRE_Ins_URF_Rifleman_BR";                                   // Team Leader
opfor_sentry = "OPTRE_Ins_URF_Rifleman_BR";                                      // Rifleman (Lite)
opfor_rifleman = "OPTRE_Ins_URF_Rifleman_BR";                                         // Rifleman
opfor_rpg = "OPTRE_Ins_URF_Rifleman_AT";                                          // Rifleman (LAT)
opfor_grenadier = "OPTRE_Ins_URF_Grenadier";                                     // Grenadier
opfor_machinegunner = "OPTRE_Ins_URF_Autorifleman";                                 // Autorifleman
opfor_heavygunner = "OPTRE_Ins_URF_Autorifleman";                                  // Heavy Gunner
opfor_marksman = "OPTRE_Ins_URF_Marksman";                                       // Marksman
opfor_sharpshooter = "OPTRE_Ins_URF_Marksman";                                // Sharpshooter
opfor_sniper = "OPTRE_Ins_URF_Sniper";                                            // Sniper
opfor_at = "OPTRE_Ins_URF_AT_Specialist";                                            // AT Specialist
opfor_aa = "OPTRE_Ins_URF_AA_Specialist";                                            // AA Specialist
opfor_medic = "OPTRE_Ins_URF_Medic";                                              // Combat Life Saver
opfor_engineer = "OPTRE_Ins_URF_Engineer";                                        // Engineer
opfor_paratrooper = "OPTRE_Ins_URF_Rifleman_AR";                                   // Paratrooper


// Enemy vehicles used by secondary objectives.
opfor_mrap = "OPCOS_M12_FAV_APC";                                       // Warthog
opfor_mrap_armed = "LM_OPCAN_Fox_SU";                                   // Marid
opfor_transport_helo = "OPTRE_Pelican_unarmed_ins";                   
opfor_transport_truck = "OPTRE_m1015_mule_ins";                         // Tempest Transport (Covered)
opfor_ammobox_transport = "O_Truck_03_transport_F";                     // Tempest Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "O_Truck_03_fuel_F";                                 // Tempest Fuel
opfor_ammo_truck = "O_Truck_03_ammo_F";                                 // Tempest Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "Flag_CSAT_F";                                             // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [

    "OPTRE_Ins_URF_Rifleman_BR",                                                     // Rifleman (Lite)
    "OPTRE_Ins_ER_Militia_MG",                                                     // mg
    "OPTRE_Ins_ER_Warlord",                                                     // Rifleman
    "OPTRE_Ins_ER_Terrorist",                                                     // Rifleman
    "OPTRE_Ins_ER_Deserter_GL",                                                 // Rifleman (AT)
    "OPTRE_Ins_ER_Surgeon",                                                  // Autorifleman
    "OPTRE_Ins_ER_Assassin",                                                   // Marksman
    "OPTRE_Ins_ER_Hacker",                                               // Medic
    "OPTRE_Ins_ER_Farmer"                                                    // Engineer

];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "OPTRE_M12_LRV_ins"                                                  // warthog armed
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "OPTRE_M12_LRV_ins",                                                
    "OPTRE_M12_LRV_ins",                                                 
    "OPTRE_M12_LRV_ins",                                                  
    "OPTRE_M12A1_LRV_ins",                                                    
    "OPTRE_M12A1_LRV_ins",                                       
    "OPTRE_M12R_AA_ins",                                        
    "OPTRE_M12R_AA_ins",                                            
    "LM_OPCAN_Fox_SU",                                         
    "LM_OPCAN_Fox_SU",                                                
    "LM_OPCAN_MGS_SU",                                                
    "LM_OPCAN_M350_INS_WDL",                                                
    "LM_OPCAN_M350_INS_WDL"                                                
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "OPTRE_M12_LRV_ins",                                                
    "OPTRE_M12_LRV_ins",                                                
    "OPTRE_M12_LRV_ins",                                           //MG HOgs
    "OPTRE_M12A1_LRV_ins"                                          // Rocket Hog
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "OPTRE_M12_LRV_ins",                                                  // Ifrit (HMG)
    "OPTRE_M12_LRV_ins",                                                  // Ifrit (GMG)
    "OPTRE_M12_LRV_ins",                                                  // Ifrit (GMG)
    "OPTRE_M12_LRV_ins",                                                    // Qilin (AT)
    "OPTRE_M12_FAV_APC",                                           // Tempest Transport
    "OPTRE_M12_FAV_APC",                                             // Tempest Transport (Covered)
    "LM_OPCAN_Fox_SU",                                        // BTR-K Kamysh
    "LM_OPCAN_Fox_SU",                                        // BTR-K Kamysh
    "OPTRE_M12R_AA_ins",                                            // ZSU-39 Tigris
    "OPTRE_M12R_AA_ins",                                            // ZSU-39 Tigris
    "LM_OPCAN_M350_INS_WDL",                                                // T-100 Varsuk
    "LM_OPCAN_M350_INS_WDL",                                                // T-100 Varsuk
    "LM_OPCAN_MGS_SU",                                                // T-140 Angara
    "LM_OPCAN_MGS_SU",                                               // T-140K Angara
    "OPTRE_UNSC_hornet_ins",                                 // Po-30 Orca (Armed)
    "OPTRE_UNSC_hornet_ins",                                 // Po-30 Orca (Armed)
    "OPTRE_Pelican_armed_ins",                                      // Mi-290 Taru (Bench)
    "OPTRE_Pelican_armed_ins"                                 // Mi-48 Kajman
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "OPTRE_M12_LRV_ins",                                                  // Ifrit (HMG)
    "OPTRE_M12_LRV_ins",                                                  // Ifrit (HMG)
    "OPTRE_m1015_mule_ins",                                           // Tempest Transport                     
    "OPTRE_M12R_AA_ins",                                            // AA hog
    "OPTRE_UNSC_hornet_ins",                                 // Hornet
    "LM_OPCAN_D77_U_SU"                                       // Pelican
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "OPTRE_m1015_mule_ins",                                           // Tempest Transport
    "OPTRE_M12_FAV_APC",                                             // Tempest Transport (Covered)
    "LM_OPCAN_Fox_SU",                                      // Mi-290 Taru (Bench)
    "OPTRE_Pelican_armed_ins"                                  // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "OPTRE_UNSC_hornet_ins",                                      // Mi-290 Taru (Bench)
    "OPTRE_Pelican_unarmed_ins",                                 // Po-30 Orca (Armed)
    "OPTRE_Pelican_armed_ins"                                 // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    
];
