/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "LM_OPCAN_CPD_Officer",
	"LM_OPCAN_CPD_Officer_M45",
	"LM_OPCAN_CPD_Officer_SMG",
	"LM_OPCAN_CPD_TL",
	"LM_OPCAN_CPD_Officer_SWAT",
	"LM_OPCAN_CPD_Breacher",
	"LM_OPCAN_CPD_Marksman",
	"LM_OPCAN_CMA_SL",
	"LM_OPCAN_CMA_Rifleman",
	"LM_OPCAN_CMA_Rifleman_AT",
	"LM_OPCAN_CMA_TL",
	"LM_OPCAN_CMA_Marksman",
	"LM_OPCAN_CMA_GL",
	"LM_OPCAN_CMA_AutoRifleman",
	"LM_OPCAN_CMA_Medic"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
    "OPTRE_M12_FAV_PD",
    "LM_OPCAN_AFV102_CPD_U_WDL",
	"OPTRE_UNSC_falcon_PD",
	"LM_OPCAN_HOG_MG_CMA_WDL",
	"LM_OPCAN_HOG_TT_CMA_WDL",
	"LM_OPCAN_HOG_AA_CMA_WDL"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["OPTRE_M6G","OPTRE_8Rnd_127x40_Mag",9,"",""],
    ["OPTRE_M45","OPTRE_6Rnd_8Gauge_Pellets",12,"",""],
	["OPTRE_M45","OPTRE_6Rnd_8Gauge_Slugs",12,"",""],
    ["OPTRE_M7","OPTRE_48Rnd_5x23mm_JHP_Mag",9,"",""]
];

KP_liberation_guerilla_weapons_2 = [
    ["LM_OPCAN_ARMX","30Rnd_65x39_caseless_black_mag_Tracer",9,"",""],
    ["OPTRE_M295_BMR","OPTRE_15Rnd_762x51_Mag",9,"optre_bmr_scope",""],
    ["OPTRE_M45","OPTRE_6Rnd_8Gauge_Slugs",12,"",""]
];

KP_liberation_guerilla_weapons_3 = [
    ["OPTRE_MA32","OPTRE_32Rnd_762x51_Mag_Tracer_Yellow",9,"",""],
    ["OPTRE_MA32GL","OPTRE_32Rnd_762x51_Mag",9,"",""],
    ["OPTRE_M295_BMR","OPTRE_15Rnd_762x51_Mag",9,"",""],
    ["OPTRE_M73_AC","OPTRE_200Rnd_95x40_Box",4,"OPTRE_M73_SmartLink","bipod_01_F_blk"],
    ["OPTRE_M7","OPTRE_48Rnd_5x23mm_JHP_Mag",9,"",""]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "LM_OPCAN_CPD_Uni_Base",
	"LM_OPCAN_CPD_Uni_Base_2",
	"LM_OPCAN_CPD_Uni_Base_2"
	
];

KP_liberation_guerilla_uniforms_2 = [
    "LM_OPCAN_CPD_Uni_Base",
	"LM_OPCAN_CPD_Uni_Base",
	"LM_OPCAN_CPD_Uni_Base_2"
];

KP_liberation_guerilla_uniforms_3 = [
    "LM_OPCAN_CMA_uni_Base"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "LM_OPCAN_CPD_Rig"
];

KP_liberation_guerilla_vests_2 = [
    "LM_OPCAN_CPD_Vest_UP",
	"LM_OPCAN_CPD_Vest_UP",
    "LM_OPCAN_CPD_Vest",
	"LM_OPCAN_CPD_Vest"
];

KP_liberation_guerilla_vests_3 = [
	"LM_OPCAN_CMA_uni_Base"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "LM_OPCAN_Cap_PD"
];

KP_liberation_guerilla_headgear_2 = [
    "LM_OPCAN_CPD_CH230",
    "LM_OPCAN_CPD_CH230_UP",
	"LM_OPCAN_CPD_CH230_UP",
	"LM_OPCAN_CPD_CH230_UP"
];

KP_liberation_guerilla_headgear_3 = [
    "LM_OPCAN_CMA_CH250"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
	"",
	"",
	"",
	"",
	"LM_OPCAN_URB_Shemagh",
	"LM_OPCAN_URB_Shemagh",
	"LM_OPCAN_URB_Shemagheye"
];
