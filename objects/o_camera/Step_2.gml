/// @description Update Camera Position
if !instance_exists(target) exit;

// get x view and y view
cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);
	
// update position
cx = lerp(cx, target.x-width/2, 0.2);
cy = lerp(cy, target.y-height/2, 0.2);

// round to whole integers for pixel-perfect camera
cx = round_n(cx, 1/scale);
cy = round_n(cy, 1/scale);
	
// limit camera so it can't go past room borders
if cx <= 0 cx = 0;
if cy <= 0 cy = 0;
if cx+width >= room_width cx = room_width-width;
if cy+height >= room_height cy = room_height-height;
		

// set the position of the camera
camera_set_view_pos(view_camera[0], cx, cy);




