/// @description Move

var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

// add movement
x += h * 3;
y += v * 3;
