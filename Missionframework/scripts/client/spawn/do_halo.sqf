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
    halo_position = halo_position getPos [random 2, random 2]; //250 360
    halo_position = [ halo_position select 0, halo_position select 1, 12000 ]; //GRLIB_halo_altitude + (random 200)
    halojumping = true;
    sleep 0.1;
    cutRsc ["fasttravel", "PLAIN", 1];
    //player say2D "dropPod";
	_sound = "Item_muzzle_snds_L" createVehicle position player;		//This need to be deleted later, so sound source has to be attached to any generic object that shouldent be seen
	_dirVector = vectorDir player;										//Gets direction player is facing
	
    sleep 1;
    
	_veh = "OPTRE_HEV" createVehicle position player;					//creates drop pod
    _veh setpos halo_position;											//moves drop pod to halo marker and height
	player moveInAny _veh;												//moves player inside drop pod
	
	addCamShake [5, 60, 25];											//Adds 60 sec of camera shake
	
	
	_fire = "#particlesource" createVehicleLocal position _veh;			//Creates fire effect
	_fire setParticleClass "ObjectDestructionFire1Smallx";
	_fire attachTo [_veh,[0,0,0]];
	
	_sound attachTo [_veh, [0, 0, 0]]; 									//Attaches the sound source to entry vehicle
	[_sound, player] say2D "dropPod";									//Player drop pod sound from sound source
	
	_y = 0; _p = 0; _r = 0;												//pitch roll and yaw
	_veh setVectorDirAndUp [
		[sin _y * cos _p, cos _y * cos _p, sin _p],
		[[sin _r, -sin _p, cos _r * cos _p], -_y] call BIS_fnc_rotateVector2D
	];																	//Really complicated code I stole from wiki, makes sure pod is oriented right
	
	_veh setVectorDir _dirVector;												//Sets the pods orientation to players orientation
	_veh setVelocity [0, 0, -750];												//Gives the entry vehicle a speed bost
	
	_p1 = getPos _veh; 																						
	_s = "Sh_155mm_AMOS" createVehicle _p1;										//Beefy 155 gives incomming sound	
	_s attachTo [_veh, [0, 0, 2]];											//Adds it 10m above so it doesent blow up when pod hits ground
	
	
	while {(getPosATL _veh) select 2 > 800} do {								//Holds script up until pod is below 800m
//		_vel = velocity _veh;
//		_alt = getPosATL _veh;
//		systemchat str _vel;
//		systemchat str _alt;
		sleep .25;
	};
	
	
	_fireAlive = true;																//Used to handle condition in next while loop										
	
	while {(getPosATL _veh) select 2 > 100} do {									//Handles velocity/slow down between 800m and 100m
		_alt = getPosATL _veh;														//Gets current altitude
//		_vel = velocity _veh;
		_veh setVelocity [0, 0, ((_alt select 2) * -1)];							//Sets velocity to altitude, ie 600m = -600m/s, 200m = -200m/s
//		systemchat str _vel;
//		systemchat str _alt;
		
		sleep .25
	};
	
	_veh setVelocity [0, 0, -100];										//Slow entry down 1 last time
	
    
    halojumping = false;
	
	waitUntil { isTouchingGround _veh };								//Suspends execution until vehicle is touching ground
	deleteVehicle _s;													//Deletes 155mm
	_veh setVelocity [0, 0, 0];											//Zero out velocity of drop pod
	deleteVehicle _fire;												//Deletes fire
	p = getPos _veh; 													
	a = "Sh_105mm_HEAT_MP" createVehicle p; 							
	a setVelocity [0, 0, -10];											//get pos of drop pod, creates a shell going downwards at the base of pod to simulate impact
	deleteVehicle _sound;												//Force stops the sound by deleting sound creating object
	sleep 1;
	resetCamShake; 														//Stops camera shake
	_veh animateSource ["Doors", 1];									//Opens doors
	
	//player action ["getOut",vehicle _veh];								//ejects player
	sleep 300;
	deleteVehicle _veh;														//Deletes drop pod
    
    
};
