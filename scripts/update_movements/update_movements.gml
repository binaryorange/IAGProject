// update hsp and vsp to left/up

if (left != 0 or up != 0) {
	moveDir = point_direction(0, 0, left, up);
	
	moveX = lengthdir_x(walk_spd, moveDir);
	moveY = lengthdir_y(walk_spd, moveDir);
	
	hsp += moveX;
	vsp += moveY;
}

// drag
hsp = lerp(hsp, 0, drag);
vsp = lerp(vsp, 0, drag);

// limit speed
if hsp >= max_speed hsp = max_speed;
if hsp <= -max_speed hsp = -max_speed;

if vsp >= max_speed vsp = max_speed;
if vsp <= -max_speed vsp = -max_speed; 

// apply carried over decimals
hsp += hsp_decimal;
vsp += vsp_decimal;

// floor hsp and vsp
hsp_decimal = frac(hsp);
hsp -= hsp_decimal;

vsp_decimal = frac(vsp);
vsp -= vsp_decimal;