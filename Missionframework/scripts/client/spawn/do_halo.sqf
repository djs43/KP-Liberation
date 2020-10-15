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

//Above code is unchanged from missionfile
//Below is heavily modified Halo script from KP liberation
//Edits done by Dan [Paxon]
//Changes halo script to use the OPTRE drop pod																			//
if ( dojump > 0 ) then {
	GRLIB_last_halo_jump = time;
    halo_position = halo_position getPos [random 2, random 2]; 				//Gets a random spot within 2 paramaters, right now its basicaly pinpoint
    halo_position = [ halo_position select 0, halo_position select 1,12000];//Might make altitude random later
    halojumping = true;														//Not sure what this is for but its in origonal script
    sleep 0.1;
    cutRsc ["fasttravel", "PLAIN", 1];										//Calls "deploying in progress" cutscene
	_sound = "Item_muzzle_snds_L" createVehicle position player;			//This need to be deleted later, so sound source has to be attached to any generic object that shouldent be seen
	_dirVector = vectorDir player;											//Gets direction player is facing
	
    sleep 1;
    
	_veh = "OPTRE_HEV" createVehicle position player;						//creates drop pod
    _veh setpos halo_position;												//moves drop pod to halo marker and height
	player moveInAny _veh;													//moves player inside drop pod
	_veh setVehicleLock "LOCKED";											//Locks the player inside the pod
	
	addCamShake [5, 60, 25];												//Adds 60 sec of camera shake
	
	
	_fire = "#particlesource" createVehicleLocal position _veh;				//Creates fire effect
	_fire setParticleClass "ObjectDestructionFire1Smallx";					//Sets type of effect
	_fire attachTo [_veh,[0,0,0]];											//Attaches effect to entry vehicle
	
	_sound attachTo [_veh, [0, 0, 0]]; 										//Attaches the sound source to entry vehicle
	[_sound, player] say2D "dropPod";										//Player drop pod sound from sound source
	
	_y = 0; _p = 0; _r = 0;													//pitch roll and yaw
	_veh setVectorDirAndUp [												//Setpos has a bug where the pitch/roll/yaw of the object is based on the terrain below it
		[sin _y * cos _p, cos _y * cos _p, sin _p],							//Ie if you try use setpos 100m above a hill with a 45 degree slope, setpos will till object 45 degrees
		[[sin _r, -sin _p, cos _r * cos _p], -_y]							//Not only did it look funny, setVelocity is based on orientation, causing pods to be yeeted in 45 degree angles
		call BIS_fnc_rotateVector2D
	];																		//Really complicated code I stole from wiki, makes sure pod is oriented right
	
	_veh setVectorDir _dirVector;											//Sets the pods orientation to players orientation
	_veh setVelocity [0, 0, -750];											//Gives the entry vehicle a speed bost of -750m/s
	
	
	while {(getPosATL _veh) select 2 > 800} do {							//Holds script up until pod is below 800m
		sleep .25;															// .25s delay to prevent script from bogging down server
	};																		//This loop doesent really do anything but is still needed or else next part of script would fire right away
										
	_shellCreated = false;													//Used for breakout condition below
	
	while {(getPosATL _veh) select 2 > 100} do {							//Handles velocity/slow down between 800m and 100m
		_alt = getPosATL _veh;												//Gets current altitude
		_veh setVelocity [0, 0, ((_alt select 2) * -1)];					//Sets velocity to altitude, ie 600m = -600m/s, 200m = -200m/s
		if (((getPosATL _veh) select 2 < 600) && (! _shellCreated)) then {	//Below 600m AND sachel hasent been placed
			_shellCreated = true;											//Ensures condition only happens once
			_p1 = getPos _veh;												//Gets coordinates of pod
			_s = "SatchelCharge_Remote_Ammo" createVehicle [				//Creates satchel just above pod
			(_p1 select 0) + 0,												//x coordinate with 0 offset
			(_p1 select 1) + 0,												//y coordinate with 0 offset
			(_p1 select 2) + 5];											//Y coordinate with 5 offset
			_s setDamage 1;													//Blows up sachel
			
		};
		
		sleep .25															//delay to prevent script bogging down server, smaller delay with cause smoother slowdown phase
	};
	
	_veh setVelocity [0, 0, -100];											//Slow entry down 1 last time, values above -200m/s cause pod to phase though ground
	_veh setVehicleLock "UNLOCKED";											//Unlocks the pod before it touches ground incase it bugs out
    
    halojumping = false;													//Im not sure what this is for but it was in origonal script
	
	waitUntil { isTouchingGround _veh };									//Suspends execution until pod is touching ground
	_veh setVelocity [0, 0, 0];												//Zero out velocity of drop pod, prevents most bouncing
	deleteVehicle _fire;													//Deletes fire
	
	p = getPos _veh; 														//Gets pos of drop pod				
	a = "Sh_125mm_HEAT" createVehicle p; 									//Creates 125mm right below pod to simulate it hitting round from space
	a setVelocity [0, 0, -10];												//force the 125mm to hit ground
	deleteVehicle _sound;													//Force stops the sound by deleting sound creating object
																			//Above code happens near instantly after pod hits ground
	
	sleep 1;
	resetCamShake; 															//Stops camera shake
	sleep 5;
	_veh animateSource ["Doors", 1];										//Opens doors
	
	player action ["getOut",vehicle _veh];									//ejects player
	_veh setVehicleLock "LOCKED";											//Locks the vehicle
	
	sleep 300;																//5 minute despawn delay
	deleteVehicle _veh;														//Deletes drop pod
    
    
};
