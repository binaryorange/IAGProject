///update_facing_animations

// --------------- MOVE STATE ANIMATIONS ---------------
if state == player_states.MOVE {
	if dir_facing == facing.DOWN	sprite_index = s_player_walk_down;
	if dir_facing == facing.UP		sprite_index = s_player_walk_up;
	if dir_facing == facing.RIGHT	sprite_index = s_player_walk_right;
	if dir_facing == facing.LEFT	sprite_index = s_player_walk_left;
}

// --------------- IDLE STATE ANIMATIONS ---------------
if state == player_states.IDLE {
	if dir_facing == facing.DOWN	sprite_index = s_player_idle_down;
	if dir_facing == facing.UP		sprite_index = s_player_idle_up;
	if dir_facing == facing.RIGHT	sprite_index = s_player_idle_right;
	if dir_facing == facing.LEFT	sprite_index = s_player_idle_left;
	
}
