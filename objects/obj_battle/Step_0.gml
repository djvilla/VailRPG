/// @desc Send player back to world
if(!instance_exists(obj_enemy_parent)){
	var _room = obj_player.last_room_;
	var _fade_color = c_black;
	var _fade_speed = 0.05;
	var _last_location_x = obj_player.last_x_;
	var _last_location_y = obj_player.last_y_;
	fadeout(_room, _fade_color, _fade_speed, _last_location_x, _last_location_y);
	instance_destroy();
}