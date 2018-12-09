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

// FACING enum
enum facing {
	LEFT,
	RIGHT,
	UP,
	DOWN
}

// facing variables
dir_facing = facing.DOWN; // initialize to facing down
// STATES enum
enum player_states {
	IDLE,
	MOVE,
	WEAPON,
	PUNCHING,
	BLOCK
}

// state variables
state = player_states.IDLE; // initialize to IDLE

// input variables
left = 0;
right = 0;
up = 0;
down = 0;

