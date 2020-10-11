/*
    Needed Mods:
    - None

    Optional Mods:
    - BWMod
    - RHSUSAF
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_ArmoryA_Green";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "OPTRE_m1087_stallion_unsc_box";                    // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "OPTRE_m1087_stallion_unsc_medical";            // This is the mobile respawn (and medical) truck.
huron_typename = "OPTRE_Pelican_unarmed";                      			 // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "LM_OPCAN_UNSCMC_Crewman_WDL";                     // This defines the crew for vehicles.
pilot_classname = "LM_OPCAN_UNSCMC_Crewman_WDL";                        // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "OPTRE_UNSC_falcon_unarmed";    // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "OPTRE_m1087_stallion_unsc";             // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "Land_Radar_Small_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
	["LM_OPCAN_UNSCMC_SL_WDL",20,0,0],
	["LM_OPCAN_UNSCMC_TL_WDL",15,0,0],
	["LM_OPCAN_UNSCMC_Rifleman_WDL",15,0,0],
	["LM_OPCAN_UNSCMC_Rifleman_AT_WDL",30,5,0],
	["LM_OPCAN_UNSCMC_Engineer_WDL",30,0,0],
	["LM_OPCAN_UNSCMC_GL_WDL",25,0,0],
	["LM_OPCAN_UNSCMC_Breacher_WDL",15,0,0],
	["LM_OPCAN_UNSCMC_Marksman_WDL",30,0,0],
	["LM_OPCAN_UNSCMC_AutoRifleman_WDL",25,0,0],
	["LM_OPCAN_UNSCMC_Sniper_WDL",70,5,0],
	["LM_OPCAN_UNSCMC_Crewman_WDL",10,0,0],
	["LM_OPCAN_UNSCMC_Medic_WDL",30,0,0]
];

light_vehicles = [
	["OPTRE_M274_ATV",50,0,25],											//Mongoose
	["LM_OPCAN_HOG_RC_MC_WDL",100,0,50],								//Recovery Warthog
	["LM_OPCAN_HOG_RC_AR_DES",100,0,50],								//Recovery Warthog Desert
	["OPTRE_m1087_stallion_unsc_box",125,0,75],							//Stallion Container Transport
	["LM_OPCAN_HOG_U_MC_WDL",125,0,75],									//Warthog Unarmed (driver + 3 passenger)
	["LM_OPCAN_HOG_U_AR_DES",125,0,75],									//Warthog Unarmed (driver + 3 passenger) Desert
	["LM_OPCAN_HOG_TT_MC_WDL",150,0,75],								//Warthog Transport (Driver + 7 passenger)
	["LM_OPCAN_HOG_TT_AR_DES",150,0,75],								//Warthog Transport (Driver + 7 passenger) Desert
	["LM_OPCAN_HOG_MG_MC_WDL",150,40,75],								//Warthog MG
	["LM_OPCAN_HOG_MG_AR_DES",150,40,75],								//Warthog MG Desert
	["LM_OPCAN_HOG_AT_MC_WDL",150,60,75],								//Warthog Rocket
	["LM_OPCAN_HOG_AT_AR_DES",150,60,75],								//Warthog Rocket Desert
	["LM_OPCAN_HOG_AA_MC_WDL",150,80,75],								//Warthog AA
	["LM_OPCAN_HOG_AA_AR_DES",150,80,75],								//Warthog AA Desert
	["LM_OPCAN_HOG_G_MC_WDL",150,100,75],								//Warthog Guass
	["LM_OPCAN_HOG_G_AR_DES",150,100,75]								//Warthog Guass Desert	
];

heavy_vehicles = [
	["LM_OPCAN_AFV102_MC_U_WDL",200,0,100],								//Unarmed Hound APC
	["LM_OPCAN_AFV102_MC_WDL",200,100,100],								//Armed Hound APC
	["LM_OPCAN_MGS_MC_WDL",200,200,100],								//Timberwolf
	["OPTRE_M808B_UNSC",400,350,225],									//Scorpion
	["OPTRE_M850_UNSC",600,700,275]										//Grizzly
];

air_vehicles = [
	["LM_OPCAN_UH144_MC",250,0,150],									//Falcon unarmed (pilot + 7 yeats)
	["LM_OPCAN_UH144A_MC",250,100,150],									//Falcon Armed
	["LM_OPCAN_D77_U_MC_CGC",750,0,750],								//Pelican Unarmed (pilot + copilot + 12 seats)
	["LM_OPCAN_D77_A_MC_CGC",750,500,750],								//Pelican Armed (pilot + copilot + 12 seats)
	["LM_OPCAN_AV14_MC",500,500,250],									//Hornet
	["OPTRE_AV22A_Sparrowhawk",1000,2000,500],							//Laser Sparrow
	["OPTRE_AV22C_Sparrowhawk",1000,1500,500]							//Cannon Sparrow
];

static_vehicles = [
    ["OPTRE_Static_M247T_Tripod",25,40,0],                              // M240
    ["OPTRE_Static_M247H_Tripod",25,40,0],                              // .50 chaingun
    ["OPTRE_Static_M247H_Shielded_Tripod",35,40,0],                     // .50 chaingun sheild
    ["OPTRE_Static_M41",35,60,0],                                       // idk .50 but bigger mount?
    ["OPTRE_Static_AA",35,60,0],                                        // AA mount
    ["OPTRE_Static_ATGM",45,60,0],                                     //AT static
    ["OPTRE_Static_Gauss",50,100,0],                                   //Guass static
	["B_Radar_System_01_F",250,0,0], 										//Radar Trailer
	["TK_GUE_WarfareBUAVterminal_Base_EP1",300,0,0],
	["B_SAM_System_03_F",250,500,0], 										//Patriot Trailer
    ["OPTRE_Corvette_archer_system",500,500,100]                         // Cruise missle launcher
];

buildings = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0],
	["Land_ArmoryA_Green",0,0,0],
	["Land_OPTRE_blast_barrier",0,0,0],
	["Land_OPTRE_milwall_hub",0,0,0],
	["Land_OPTRE_milwall_corner",0,0,0],
	["Land_OPTRE_milwall_gate",0,0,0],
	["Land_OPTRE_milwall_gateXL",0,0,0],
	["Land_OPTRE_milwall_segment",0,0,0],
	["Land_OPTRE_mil_antenna_mast",0,0,0],
	["Land_OPTRE_Monument",0,0,0],
	["Land_OPTRE_M72_barrier",0,0,0],
	["Land_OPTRE_M72_barrierBlk",0,0,0],
	["Land_OPTRE_M72_barrierTan",0,0,0],
	["Land_OPTRE_M72S_barrier",0,0,0],
	["Land_OPTRE_M72S_barrierBlk",0,0,0],
	["Land_OPTRE_M72S_barrierTan",0,0,0],
	["Land_OPTRE_watchtower_woodland",0,0,0],
	["Land_OPTRE_watchtower_urban",0,0,0],
	["Land_OPTRE_watchtower_desert",0,0,0],
	["Land_OPTRE_hard_tent_woodland",0,0,0],
	["Land_OPTRE_hard_tent_urban",0,0,0],
	["Land_OPTRE_hard_tent_desert",0,0,0],
	["Land_OPTRE_medical_tent_grn",0,0,0],
	["Land_OPTRE_medical_tent_tan",0,0,0],
	["Land_OPTRE_medical_tent_gry",0,0,0]
];

support_vehicles = [
    [Arsenal_typename,100,200,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",50,150,0],                                 // Missile Cart (Mk82)
    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",325,0,75],                                   // HEMTT Repair
    ["B_Truck_01_fuel_F",125,0,275],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",125,200,75],                                   // HEMTT Ammo
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0],                                  // Huron Ammo
	["OPTRE_M313_UNSC",400,400,400],									// Elephant
	["OPTRE_cart",50,0,25]
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "LM_OPCAN_UNSCMC_SL_WDL",
	"LM_OPCAN_UNSCMC_RTO_WDL",
	"LM_OPCAN_UNSCMC_TL_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_WDL",
	"LM_OPCAN_UNSCMC_TL_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_WDL",
	"LM_OPCAN_UNSCMC_Medic_WDL"
	
	
];

// Heavy infantry squad.
blufor_squad_inf = [
    "LM_OPCAN_UNSCMC_SL_WDL",
	"LM_OPCAN_UNSCMC_RTO_WDL",
	"LM_OPCAN_UNSCMC_TL_WDL",
	"LM_OPCAN_UNSCMC_GL_WDL",
	"LM_OPCAN_UNSCMC_AutoRifleman_WDL",
	"LM_OPCAN_UNSCMC_TL_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_WDL",
	"LM_OPCAN_UNSCMC_AutoRifleman_WDL",
	"LM_OPCAN_UNSCMC_Marksman_WDL",
	"LM_OPCAN_UNSCMC_Medic_WDL"
	
];

// AT specialists squad.
blufor_squad_at = [
    "LM_OPCAN_UNSCMC_SL_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_AT_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_AT_WDL",
	"LM_OPCAN_UNSCMC_Engineer_WDL"
	
];

// AA specialists squad.
blufor_squad_aa = [
    "LM_OPCAN_UNSCMC_TL_WDL",
	"LM_OPCAN_UNSCMC_Rifleman_AT_WDL"
];

// Force recon squad.
blufor_squad_recon = [
    "LM_OPCAN_UNSCMC_Marksman_WDL",
	"LM_OPCAN_UNSCMC_Marksman_WDL",
	"LM_OPCAN_UNSCMC_Sniper_WDL",
	"LM_OPCAN_UNSCMC_RTO_WDL"
	
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "OPTRE_UNSC_Marine_Soldier_Rifleman_Light",
    "OPTRE_UNSC_Marine_Soldier_Rifleman_Light",
    "OPTRE_UNSC_Marine_Soldier_Rifleman_Light",
    "OPTRE_UNSC_Marine_Soldier_Rifleman_Light",
    "OPTRE_UNSC_Marine_Soldier_Breacher",
    "OPTRE_UNSC_Marine_Soldier_Breacher",
    "OPTRE_UNSC_Marine_Soldier_Corpsman",
    "OPTRE_UNSC_Marine_Soldier_Rifleman_AT",
    "OPTRE_UNSC_Marine_Soldier_TeamLead"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "OPTRE_M12A1_LRV",
	"OPTRE_M12R_AA",
	"OPTRE_M12G1_LRV",
	"LM_OPCAN_AFV102_MC_WDL",
	"OPTRE_M808B_UNSC",
	"OPTRE_M850_UNSC",
	"LM_OPCAN_UH144A_CGC",
	"LM_OPCAN_D77_A_MC_WDL",
	"LM_OPCAN_AV14_MC",
	"OPTRE_AV22A_Sparrowhawk",
	"OPTRE_AV22C_Sparrowhawk",
	"OPTRE_Corvette_archer_system"
	
];
