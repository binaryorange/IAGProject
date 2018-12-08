/// @arg obj_to_check


// This script checks for collision with a specific object

var _obj = argument0;

// horizontal collisions
if place_meeting(x+hsp, y, _obj) {
	while !place_meeting(x+sign(hsp), y, _obj) {
		x += sign(hsp);
	}
	hsp = 0;
} else {
	x += hsp;
}


// vertical collisions
if place_meeting(x, y+vsp, _obj) {
	while !place_meeting(x, y+sign(vsp), _obj) {
		y += sign(vsp);
	}
	vsp = 0;
} else {
	y += vsp;
}


