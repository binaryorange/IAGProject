/// @description Move


// do inputty stuff
hsp += (keyboard_check(vk_right) - keyboard_check(vk_left)) * walk_spd;
vsp += (keyboard_check(vk_down) - keyboard_check(vk_up)) * walk_spd;

// drag
hsp = lerp(hsp, 0, drag);
vsp = lerp(vsp, 0, drag);

// stop
//if abs(hsp) <= 0.1 hsp = 0;
//if abs(vsp) <= 0.1 vsp = 0;

// limit speed
if hsp >= max_speed hsp = max_speed;
if hsp <= -max_speed hsp = -max_speed;

if vsp >= max_speed vsp = max_speed;
if vsp <= -max_speed vsp = -max_speed; 

//// set hsp and vsp decimals to 0
//if hsp == 0 hsp_decimal = 0;
//if vsp == 0 vsp_decimal = 0;

//// apply carried over decimals
hsp += hsp_decimal;
vsp += vsp_decimal;

//// floor hsp and vsp
hsp_decimal = frac(hsp);
hsp -= hsp_decimal;

vsp_decimal = frac(vsp);
vsp -= vsp_decimal;


// update image speed and sprite index
// if hsp < 0 sprite_index = s_bear_walking_left;
//if hsp > 0 sprite_index = s_gridly_walking_right;

if hsp && vsp == 0 image_speed = 1;

// do movement stuff
x += hsp;
y += vsp;



