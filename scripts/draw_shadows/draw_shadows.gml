with(o_master_parent) {
	// draw shadows only if visible
	if visible {
		// control angle of shadows
		var skewX = 16;
		var skewY = 4;
		var width = sprite_width/2;
		var alpha = .5;
	
		// use fog to set color of shadows
		gpu_set_fog(true, c_black, 0, 1);
	
		// draw the shadows
		draw_sprite_pos(sprite_index, image_index, 
						x-width-skewX,
						y-skewY,
						x+width-skewX,
						y-skewY,
						x+width,
						y,
						x-width,
						y,
						alpha);
	
		// set fog to false and white
		gpu_set_fog(false, c_white, 0, 0);	
	}
}