/// @description MOVE State

// get input
get_input();

// update movements
update_movements();

// check collisions
check_solid_collision(o_master_parent);

// check facing direction
update_facing_direction();

// update animations
update_facing_animations();

// check state

// go to idle if not moving
if ((abs(hsp) == 0 && abs(vsp) == 0)) {
	state = player_states.IDLE;
	image_index = 0;
}