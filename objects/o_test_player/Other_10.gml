/// @desc IDLE State

// update images
image_speed = 1;

// get input
get_input();

// update animations
if dir_facing = facing.DOWN sprite_index = s_new_gridly_down_idle;
if dir_facing = facing.UP sprite_index = s_new_gridly_up_idle;

// determine if we are moving
if ((left != 0) || (up != 0)) {
	state = player_states.MOVE;
	image_index = 0;
}

// determine if we are attacking

// determine if we are blocking
