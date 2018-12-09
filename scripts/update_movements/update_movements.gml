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