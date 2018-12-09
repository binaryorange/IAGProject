/// @description Sort & Draw Objects in Grid and draw Shadow effects


// draw shadows

with(o_parent_depth_and_shadows){
	// only draw shadows if object is visible
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


// draw instances in order of Y
if (ds_exists(depth_sort_grid, ds_type_grid)) {
	// add instance to grid
	var depth_grid = depth_sort_grid;
	var instNum = instance_number(o_parent_depth_and_shadows);
	
	// resize the grid when instance is added
	ds_grid_resize(depth_grid, 2, instNum);
	
	var yy = 0;
	
	with (o_parent_depth_and_shadows) {
		// add ID to grid
		depth_grid[# 0, yy] = id;
		
		// add Y to grid
		depth_grid[# 1, yy] = y;
		
		yy++;
	}
	
	// sort the grid to ascending order for Y positions
	ds_grid_sort(depth_sort_grid, 1, true);
	
	yy = 0;
	repeat(instNum) {
		var instID = depth_sort_grid[# 0, yy];	
		
		with (instID) {
			// only draw the instance if it is visible
			if instID.visible draw_self();
		}
		
		yy++;
	}
	
	// clear grid
	ds_grid_clear(depth_sort_grid, 0);
}

