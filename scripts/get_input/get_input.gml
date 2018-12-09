/// get_input();

hsp += (keyboard_check(vk_right) - keyboard_check(vk_left)) * walk_spd;
vsp += (keyboard_check(vk_down) - keyboard_check(vk_up)) * walk_spd;