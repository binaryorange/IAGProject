// draw instances in order of Y
if (ds_exists(depth_sort_grid, ds_type_grid)) {
	// add instance to grid
	var depth_sort = depth_sort_grid;
	var instNum = instance_number(o_master_parent);
	
	// resize the grid
	ds_grid_resize(depth_sort, 2, instNum);

	
	var yy = 0;
	
	with (o_master_parent) {
		// add ID to grid
		depth_sort[# 0, yy] = id;
		
		// add Y to grid
		depth_sort[# 1, yy] = y;
			
		// count up
		yy++;
	}
	
	// sort the grid to ascending order for Y positions
	ds_grid_sort(depth_sort, 1, true);
	
	yy = 0;
	repeat(instNum) {
		var instID = depth_sort[# 0, yy];	
		
		with (instID) {
			// draw the instance if visible
			if instID.visible draw_self();
		}
		
		yy++;
	}
	
	// clear grid
	ds_grid_clear(depth_sort, 0);
}