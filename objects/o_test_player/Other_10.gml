/// @desc IDLE State

// set image_speed
image_speed = 1;

// get input
get_input();

// update animations
update_facing_animations();

// determine if we are moving
if ((left != 0) || (up != 0)) {
	state = player_states.MOVE;
	image_index = 0;
}

// determine if we are attacking

// determine if we are blocking
