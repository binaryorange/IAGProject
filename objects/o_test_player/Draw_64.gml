/// @description Draw debug text
// get display properties
var w = view_get_wport(view_camera[0]);
var h = view_get_hport(view_camera[0]);
var state_text = "";
var facing_text = "";

// set size of GUI layer
draw_set_font(f_12);

draw_text(round(1), round(h-h+1), "VIEWPORT RES: " + string(w) + "x" + string(h));
draw_text(round(1), round(h-h+32), "HSP: " + string(hsp) + " | VSP: " + string(vsp));

switch (state) {
	case 0: state_text = "IDLE"; break;
	case 1: state_text = "MOVE"; break;
	case 2: state_text = "WEAPON"; break;
	case 3: state_text = "PUNCHING"; break;
	case 4: state_text = "BLOCK"; break;
}

draw_text(round(1), round(h-h+64), "STATE: " + string(state_text));

switch (dir_facing) {
	case facing.UP: facing_text = "UP"; break;
	case facing.DOWN: facing_text = "DOWN"; break;
	case facing.LEFT: facing_text = "LEFT"; break;
	case facing.RIGHT: facing_text = "RIGHT"; break;
}

draw_text(round(1), round(h-h+96), "FACING: " + string(facing_text));
draw_text(round(1), round(h-h+128), "LEFT/UP: " + string(left) + "/" + string(up));
