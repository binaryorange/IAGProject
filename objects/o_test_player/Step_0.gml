/// @description Move


// do inputty stuff
hsp += (keyboard_check(vk_right) - keyboard_check(vk_left)) * walk_spd;
vsp += (keyboard_check(vk_down) - keyboard_check(vk_up)) * walk_spd;

// drag
hsp = lerp(hsp, 0, drag);
vsp = lerp(vsp, 0, drag);


if hsp && vsp == 0 image_speed = 1;

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


// check for SOLID collisions
check_solid_collision(o_parent_depth_and_shadows);



