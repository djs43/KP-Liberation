private [ "_dialog", "_backpack", "_backpackcontents" ];

if ( isNil "GRLIB_last_halo_jump" ) then { GRLIB_last_halo_jump = -6000; };

if ( GRLIB_halo_param > 1 && ( GRLIB_last_halo_jump + ( GRLIB_halo_param * 60 ) ) >= time ) exitWith {
    hint format [ localize "STR_HALO_DENIED_COOLDOWN", ceil ( ( ( GRLIB_last_halo_jump + ( GRLIB_halo_param * 60 ) ) - time ) / 60 ) ];
};

_dialog = createDialog "liberation_halo";
dojump = 0;
halo_position = getpos player;

_backpackcontents = [];

[ "halo_map_event", "onMapSingleClick", { halo_position = _pos } ] call BIS_fnc_addStackedEventHandler;

"spawn_marker" setMarkerTextLocal (localize "STR_HALO_PARAM");

waitUntil { dialog };
while { dialog && alive player && dojump == 0 } do {
    "spawn_marker" setMarkerPosLocal halo_position;

    sleep 0.1;
};

if ( dialog ) then {
    closeDialog 0;
    sleep 0.1;
};

"spawn_marker" setMarkerPosLocal markers_reset;
"spawn_marker" setMarkerTextLocal "";

[ "halo_map_event", "onMapSingleClick" ] call BIS_fnc_removeStackedEventHandler;

if ( dojump > 0 ) then {
    GRLIB_last_halo_jump = time;
    halo_position = halo_position getPos [random 250, random 360]; //250 360
    halo_position = [ halo_position select 0, halo_position select 1, 1000 ]; //GRLIB_halo_altitude + (random 200)
    halojumping = true;
    sleep 0.1;
    cutRsc ["fasttravel", "PLAIN", 1];
    playSound "parasound";
    sleep 1;
    
	_veh = "OPTRE_HEV" createVehicle halo_position;						//creates drop pod
    _veh setpos halo_position;											//moves drop pod to halo marker and height
	player moveInAny _veh;												//moves player inside drop pod
	addCamShake [5, 60, 25];											//Adds 60 sec of camera shake
    sleep 4;
    halojumping = false;
	
	waitUntil { isTouchingGround _veh };								//Suspends execution until vehicle is touching ground
	p = getPos _veh; 													
	a = "Sh_105mm_HEAT_MP" createVehicle p; 							
	a setVelocity [0, 0, -100];											//get pos of drop pod, creates a shell going downwards at the base of pod to simulate impact
	sleep 1;
	resetCamShake; 														//Stops camera shake
	_veh animateSource ["Doors", 1];									//Opens doors
	
	//player action ["getOut",vehicle _veh];								//ejects player
	sleep 300;
	deleteVehicle _veh;													//Deletes drop pod
    
    
};
