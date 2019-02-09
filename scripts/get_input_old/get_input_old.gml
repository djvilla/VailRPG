/// @desc get_input()

//Movement Input
up = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
right = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
left = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
down = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
pausekey = keyboard_check(vk_enter);

//Horizontal movement
x_axis = (right - left);
//Vertical movement
y_axis = (down - up);

//Gamepad input
if(gamepad_is_connected(0)){
	up = gamepad_button_check(0, gp_padu);
	right = gamepad_button_check(0, gp_padr);
	left = gamepad_button_check(0, gp_padl);
	down = gamepad_button_check(0, gp_padd);
	pausekey = gamepad_button_check(0, gp_start);
	
	//Horizontal movement
	x_axis = max(gamepad_axis_value(0, gp_axislh), 
				 gamepad_axis_value(0, gp_axisrh),
				 right - left,
				 0);
	//Vertical movement
	y_axis = max(gamepad_axis_value(0, gp_axislv), 
				 gamepad_axis_value(0, gp_axisrv),
				 down - up,
				 0);
}