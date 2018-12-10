/// @description Initialize variables
hsp = 0;
vsp = 0;
hsp_decimal = 0;
vsp_decimal = 0;
walk_spd = 1.5;
max_speed = 2;
moving = false;

// friction variables
drag = .4;

// input variables
left = 0;
right = 0;

// facing variables
enum facing {
	LEFT,
	RIGHT,
	UP,
	DOWN
}

dir_facing = facing.DOWN; // initialize to facing down


// state variables
enum player_states {
	IDLE,
	MOVE,
	WEAPON,
	PUNCHING,
	BLOCK
}

state = player_states.IDLE; // initialize to IDLE

// debug variables
debug_mode_on = true; // set to TRUE for now



