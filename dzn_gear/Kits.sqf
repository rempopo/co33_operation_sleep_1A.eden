// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 4 || daytime > 16) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 4 || daytime > 16) then { "rhs_1PN138" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//игроки
kit_sprf_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b13_6sh92_radio","RD_54_69_R148","CUP_H_RUS_ZSH_1",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_2mag_camo","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk4short","rhs_acc_2dpZenit","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pb_6p9","rhs_mag_9x18_8_57N181S",["rhs_acc_6p9_suppressor","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",1],["HANDGUN MAG",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",7],["HANDGUN MAG",2]]]
];
kit_sprf_mm = [
	["<EQUIPEMENT >>  ","U_BG_Guerrilla_6_1","rhs_6b13_6sh92","CUP_B_AlicePack_Bedroll","H_Watchcap_khk",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svds","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m21_svd",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_tr8","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_white",2],["rhs_mag_rgd5",2],["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",8],["ACE_HandFlare_White",2],["ACE_HandFlare_Green",1],["ACE_HandFlare_Red",1],["rhs_mag_rdg2_white",2]]]
];
kit_sprf_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b13_6sh92","CUP_B_AlicePack_Khaki","CUP_H_RUS_ZSH_1",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_tr8","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_white",2],["rhs_mag_rgd5",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",1],["PRIMARY MAG",2],["ACE_HandFlare_White",2],["ACE_HandFlare_Green",1],["ACE_HandFlare_Yellow",1],["rhs_mag_rdg2_white",2]]]
];
kit_sprf_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b13_6sh92_vog","CUP_B_AlicePack_Khaki","CUP_H_RUS_ZSH_1",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_VOG25",["rhs_acc_dtk1983","","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",7],["rhs_VG40OP_white",2],["rhs_VG40OP_green",1],["rhs_VG40OP_red",1],["rhs_VOG25",5]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["rhs_100Rnd_762x54mmR_green",1],["rhs_mag_rgd5",2],["PRIMARY MAG",7],["rhs_VOG25",10],["rhs_VG40MD_White",2],["rhs_VG40OP_white",2]]]
];
kit_sprf_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b13_6sh92","CUP_B_AlicePack_Khaki","CUP_H_RUS_ZSH_1",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_2mag","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk1983","rhs_acc_2dpZenit","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["PRIMARY MAG",6],["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",2]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["PRIMARY MAG",12],["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",1]]]
];
kit_sprf_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b13_6sh92","rhs_rpg_empty","CUP_H_RUS_ZSH_1",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk1983","","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","rhs_acc_pgo7v3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_VOG25",3],["rhs_30Rnd_545x39_AK_green",7],["rhs_mag_rdg2_white",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",3],["rhs_30Rnd_545x39_AK_green",3]]]
];
kit_sprf_ftl = [
	["<EQUIPEMENT >>  ","U_BG_Guerrilla_6_1","rhs_6b13_6sh92_vog","CUP_B_AlicePack_Khaki","H_Watchcap_khk",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk","","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_tr8","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",7],["rhs_VG40OP_white",2],["rhs_VG40OP_green",1],["rhs_VG40OP_red",1],["rhs_VOG25",5]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["rhs_100Rnd_762x54mmR_green",1],["rhs_mag_rgd5",2],["PRIMARY MAG",7],["rhs_VOG25",10],["rhs_VG40MD_White",2],["rhs_VG40OP_white",2]]]
];
kit_sprf_crewcommander = [
	["<EQUIPEMENT >>  ","rhs_uniform_flora","rhs_6b13_crewofficer","RD_54_69_R148","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK_green",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_7N10_AK",6],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["rhs_30Rnd_545x39_AK_green",4],["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",1],["ACE_HandFlare_White",2]]]
];
kit_sprf_crewoperator = [
	["<EQUIPEMENT >>  ","rhs_uniform_flora","rhs_6b13_6sh92","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK_green",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_7N10_AK",7],["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sprf_crewdriver = [
	["<EQUIPEMENT >>  ","rhs_uniform_flora","rhs_6b13_6sh92","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK_green",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Rook40_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_7N10_AK",6],["rhs_mag_rdg2_white",1],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];




//союзники

kit_cccp_random = [
				"kit_cccp_r1"
				,"kit_cccp_r"
				,"kit_cccp_ar"
				,"kit_cccp_med"
				,"kit_cccp_sl"
];

kit_cccp_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_vdv_flora","rhs_6b13_6sh92","rhs_sidor","H_headBandage_stained_F",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk","rhs_acc_2dpZenit","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",7],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["rhs_30Rnd_545x39_AK_green",2]]]
	,["<IDENTITY >>", "WhiteHead_15", "ace_novoice", ""]
];
kit_cccp_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_vdv_flora","rhs_6b13_Flora_crewofficer","","345th_beret_VDV_officer",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk","rhs_acc_2dpZenit","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_white",1],["rhs_30Rnd_545x39_AK_green",5],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", "WhiteHead_05", "ace_novoice", ""]
];
kit_cccp_med = [
	["<EQUIPEMENT >>  ","rhs_uniform_vdv_flora","rhs_6b13_6sh92","","ssh68_khaki",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk","rhs_acc_2dpZenit","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["ACE_personalAidKit",1],["ACE_morphine",3],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_surgicalKit",1],["ACE_tourniquet",2],["ACE_epinephrine",1],["ACE_packingBandage",5],["rhs_mag_rdg2_white",2],["rhs_30Rnd_545x39_AK_green",7]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", "WhiteHead_05", "ace_novoice", ""]
];
kit_cccp_r1 = [
	["<EQUIPEMENT >>  ","rhs_uniform_vdv_flora","rhs_6b13_6sh92","rhs_sidor","H_headBandage_bloody_F",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74","rhs_30Rnd_545x39_AK_green",["rhs_acc_dtk","rhs_acc_2dpZenit","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",1],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1]]]
];
kit_cccp_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_vdv_flora","rhs_6b13_6sh92","rhs_sidor","rhs_ssh68",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["rhs_100Rnd_762x54mmR_green",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR_green",2]]]
	,["<IDENTITY >>", "WhiteHead_15", "ace_novoice", ""]
];

				
// враги

kit_usa80_random = [
				"kit_usa80_r"
				,"kit_usa80_r1"
				,"kit_usa80_r2"
				,"kit_usa80_ar"
				,"kit_usa80_gr"
				,"kit_usa80_at"
				,"kit_usa80_aa"
				,"kit_usa80_sl"
];

kit_usa80_r = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_rm","","rhs_8point_marpatwd",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange",["","","optic_ACO_grn",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["SmokeShell",1],["Chemlight_red",2],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_gr","","rhs_booniehat2_marpatwd",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle_M203","1Rnd_HE_Grenade_shell",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",10]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_mg","","rhs_booniehat2_marpatwd",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249","rhs_200rnd_556x45_M_SAW",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhs_200rnd_556x45_T_SAW",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbe_rmp","","rhs_booniehat2_marpatwd",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4_carryhandle_pmag","rhs_mag_30Rnd_556x45_M855_Stanag",["","","rhsusf_acc_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhsusf_mag_15Rnd_9x19_FMJ",2],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",10],["rhs_mag_m18_yellow",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_at = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_rm","","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4","rhs_mag_30Rnd_556x45_M855_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhs_mag_m18_yellow",2],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",11]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_aa = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_rm","","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4","rhs_mag_30Rnd_556x45_M855_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_fim92","rhs_fim92_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhs_mag_m18_yellow",2],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",11]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_r1 = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_rm","","rhsusf_ach_helmet_M81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4","rhs_mag_30Rnd_556x45_M855_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhs_mag_m18_yellow",2],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",11]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_usa80_r2 = [
	["<EQUIPEMENT >>  ","usm_bdu_w_m","usm_vest_rba_lbv_rm","","usm_bdu_boonie_portliz",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m16a4","rhs_mag_30Rnd_556x45_M855_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",7],["1Rnd_Smoke_Grenade_shell",2],["HandGrenade",2],["SmokeShell",1],["rhs_mag_m18_yellow",2],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",11]]],
	["<BACKPACK ITEMS >> ",[]]
];

