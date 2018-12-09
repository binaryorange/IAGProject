/// @description MOVE State

// get input
get_input();

// update movements
update_movements();

// check collisions
check_solid_collision(o_parent_depth_and_shadows);

// check facing
if vsp > 0 dir_facing = facing.DOWN;
if vsp < 0 dir_facing = facing.UP;
if hsp > 0 dir_facing = facing.RIGHT;
if hsp < 0 dir_facing = facing.LEFT;

// update animations depending on direction facing
if dir_facing == facing.DOWN sprite_index = s_new_gridly_down_walk;
if dir_facing == facing.UP sprite_index = s_new_gridly_up_walk;

// check state

// go to idle if no input
if ((abs(hsp) == 0 && abs(vsp) == 0)) {
	state = player_states.IDLE;
	image_index = 0;
}