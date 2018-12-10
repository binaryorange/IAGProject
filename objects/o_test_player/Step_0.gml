/// @description Check States and Update

// switch states depending on state enabled
event_user(state);

// enable/disable debug mode
if (keyboard_check(vk_control) && keyboard_check_pressed(ord("D"))) {
	debug_mode_on = !debug_mode_on;
}



