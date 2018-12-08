/// @description Draw debug text
// get display properties
var w = view_get_wport(view_camera[0]);
var h = view_get_hport(view_camera[0]);
draw_text(w-w+1, h-h+1, "View: " + string(w) + "x" + string(h));
draw_text(w-w+1, h-h+16, "HSP: " + string(hsp) + " | VSP: " + string(vsp));
