/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
/*
opfor_officer = "OPTRE_Ins_URF_Rifleman_BR";                                          // Officer
opfor_squad_leader = "OPTRE_Ins_URF_Rifleman_BR";                         // Squad Leader
opfor_team_leader = "OPTRE_Ins_URF_Rifleman_BR";                           // Team Leader
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
*/
opfor_officer = "OPTRE_Ins_URF_Rifleman_BR";                                          // Officer
opfor_squad_leader = "OPTRE_Ins_URF_Rifleman_BR";                                  // Squad Leader
opfor_team_leader = "OPTRE_Ins_URF_Rifleman_BR";                                   // Team Leader
opfor_sentry = "OPTRE_Ins_URF_Rifleman_BR";                                      // Rifleman (Lite)
opfor_rifleman = "OPTRE_Ins_URF_Rifleman_BR";                                         // Rifleman
opfor_rpg = "OPTRE_Ins_URF_Rifleman_BR";                                          // Rifleman (LAT)
opfor_grenadier = "OPTRE_Ins_URF_Rifleman_BR";                                     // Grenadier
opfor_machinegunner = "OPTRE_Ins_URF_Rifleman_BR";                                 // Autorifleman
opfor_heavygunner = "OPTRE_Ins_URF_Rifleman_BR";                                  // Heavy Gunner
opfor_marksman = "OPTRE_Ins_URF_Rifleman_BR";                                       // Marksman
opfor_sharpshooter = "OPTRE_Ins_URF_Rifleman_BR";                                // Sharpshooter
opfor_sniper = "OPTRE_Ins_URF_Rifleman_BR";                                            // Sniper
opfor_at = "OPTRE_Ins_URF_Rifleman_BR";                                            // AT Specialist
opfor_aa = "OPTRE_Ins_URF_Rifleman_BR";                                            // AA Specialist
opfor_medic = "OPTRE_Ins_URF_Rifleman_BR";                                              // Combat Life Saver
opfor_engineer = "OPTRE_Ins_URF_Rifleman_BR";                                        // Engineer
opfor_paratrooper = "OPTRE_Ins_URF_Rifleman_BR";                                   // Paratrooper


// Enemy vehicles used by secondary objectives.
opfor_mrap = "O_MRAP_02_F";                                             // Ifrit
opfor_mrap_armed = "O_MRAP_02_hmg_F";                                   // Ifrit (HMG)
opfor_transport_helo = "O_Heli_Transport_04_bench_F";                   // Mi-290 Taru (Bench)
opfor_transport_truck = "O_Truck_03_covered_F";                         // Tempest Transport (Covered)
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
//<<<<<<< HEAD
   /* "OPTRE_Ins_ER_Warlord",                                             // Pistol man
    "OPTRE_Ins_ER_Terrorist",                                           // Shotgun
    "OPTRE_Ins_ER_Deserter_GL",                                         // GL
    "OPTRE_Ins_ER_Farmer",                                              // Shotgun
    "OPTRE_Ins_ER_Rebel_AT",                                            // Rifleman (AT)
    "OPTRE_Ins_ER_Guerilla_AR",                                         // Autorifleman
    "OPTRE_Ins_ER_Militia_MG"											// MG
    "OPTRE_Ins_ER_Surgeon"                                              // Medic
	*/
//=======
    "OPTRE_Ins_URF_Rifleman_BR",                                                     // Rifleman (Lite)
    "OPTRE_Ins_ER_Militia_MG",                                                     // mg
    "OPTRE_Ins_ER_Warlord",                                                     // Rifleman
    "OPTRE_Ins_ER_Terrorist",                                                     // Rifleman
    "OPTRE_Ins_ER_Deserter_GL",                                                 // Rifleman (AT)
    "OPTRE_Ins_ER_Surgeon",                                                  // Autorifleman
    "OPTRE_Ins_ER_Assassin",                                                   // Marksman
    "OPTRE_Ins_ER_Hacker",                                               // Medic
    "OPTRE_Ins_ER_Farmer"                                                    // Engineer
//>>>>>>> parent of bd009fa1... Update custom.sqf
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "O_LSV_02_armed_F"                                                  // Qilin (armed)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "O_MRAP_02_hmg_F",                                                  // Ifrit (HMG)
    "O_MRAP_02_hmg_F",                                                  // Ifrit (GMG)
    "O_MRAP_02_gmg_F",                                                  // Ifrit (GMG)
    "O_LSV_02_AT_F",                                                    // Qilin (AT)
    "O_APC_Tracked_02_cannon_F",                                        // BTR-K Kamysh
    "O_APC_Tracked_02_cannon_F",                                        // BTR-K Kamysh
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_MBT_02_cannon_F",                                                // T-100 Varsuk
    "O_MBT_02_cannon_F",                                                // T-100 Varsuk
    "O_MBT_04_cannon_F",                                                // T-140 Angara
    "O_MBT_04_command_F"                                                // T-140K Angara
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "O_MRAP_02_hmg_F",                                                  // Ifrit (HMG)
    "O_MRAP_02_hmg_F",                                                  // Ifrit (HMG)
    "O_LSV_02_AT_F",                                                    // Qilin (AT)
    "O_APC_Wheeled_02_rcws_F",                                          // MSE-3 Marid
    "O_APC_Tracked_02_cannon_F"                                         // BTR-K Kamysh
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "O_MRAP_02_hmg_F",                                                  // Ifrit (HMG)
    "O_MRAP_02_gmg_F",                                                  // Ifrit (GMG)
    "O_MRAP_02_gmg_F",                                                  // Ifrit (GMG)
    "O_LSV_02_AT_F",                                                    // Qilin (AT)
    "O_Truck_03_transport_F",                                           // Tempest Transport
    "O_Truck_03_covered_F",                                             // Tempest Transport (Covered)
    "O_APC_Tracked_02_cannon_F",                                        // BTR-K Kamysh
    "O_APC_Tracked_02_cannon_F",                                        // BTR-K Kamysh
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_MBT_02_cannon_F",                                                // T-100 Varsuk
    "O_MBT_02_cannon_F",                                                // T-100 Varsuk
    "O_MBT_04_cannon_F",                                                // T-140 Angara
    "O_MBT_04_command_F",                                               // T-140K Angara
    "O_Heli_Light_02_dynamicLoadout_F",                                 // Po-30 Orca (Armed)
    "O_Heli_Light_02_dynamicLoadout_F",                                 // Po-30 Orca (Armed)
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "O_Heli_Attack_02_dynamicLoadout_F"                                 // Mi-48 Kajman
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "O_MRAP_02_hmg_F",                                                  // Ifrit (HMG)
    "O_MRAP_02_hmg_F",                                                  // Ifrit (HMG)
    "O_Truck_03_transport_F",                                           // Tempest Transport
    "O_APC_Wheeled_02_rcws_F",                                          // MSE-3 Marid
    "O_APC_Tracked_02_cannon_F",                                        // BTR-K Kamysh
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_Heli_Light_02_dynamicLoadout_F",                                 // Po-30 Orca (Armed)
    "O_Heli_Transport_04_bench_F"                                       // Mi-290 Taru (Bench)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "O_Truck_03_transport_F",                                           // Tempest Transport
    "O_Truck_03_covered_F",                                             // Tempest Transport (Covered)
    "O_APC_Wheeled_02_rcws_F",                                          // MSE-3 Marid
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "O_Heli_Light_02_dynamicLoadout_F"                                  // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "O_Heli_Transport_04_bench_F",                                      // Mi-290 Taru (Bench)
    "O_Heli_Light_02_dynamicLoadout_F",                                 // Po-30 Orca (Armed)
    "O_Heli_Attack_02_dynamicLoadout_F"                                 // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "O_Plane_CAS_02_dynamicLoadout_F",                                  // To-199 Neophron (CAS)
    "O_Plane_Fighter_02_F"                                              // To-201 Shikra
];
