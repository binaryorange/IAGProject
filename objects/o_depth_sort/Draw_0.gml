/// @description Sort & Draw Objects in Grid
if (ds_exists(depth_sort_grid, ds_type_grid)) {
	// add instance to grid
	var depth_grid = depth_sort_grid;
	var instNum = instance_number(o_parent_depth);
	
	// resize the grid when instance is added
	ds_grid_resize(depth_grid, 2, instNum);
	
	var yy = 0;
	
	with (o_parent_depth) {
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
			draw_self();
		}
		
		yy++;
	}
	
	// clear grid
	ds_grid_clear(depth_sort_grid, 0);
}
