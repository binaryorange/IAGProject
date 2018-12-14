/// @description Update Camera Position
if !instance_exists(target) exit;

x = lerp(x, target.x, 0.1);
y = lerp(y, target.y, 0.1);

x = round_n(x, 1/scale);
y = round_n(y, 1/scale);

camera_set_view_pos(view_camera[0], x-width/2, y-height/2);