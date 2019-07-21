/// @desc If player collides with an enemy
if(!global.is_in_battle){
	//Go to battle room
	var _battle_room = battle_room_;
	var _fade_color = c_white;
	var _fade_speed = 0.025;
	var _battle_location_x = 88
	var _battle_location_y = 136;

	//Get the enemy type to spawn in the battle room
	enemy_collided_ = other.object_index;
	enemy_collided_id_ = other.id;
	//Last location of the player to return them too
	last_x_ = x;
	last_y_ = y;
	last_direction_ = direction_facing_;
	last_facing_sprite_ = sprite_[player.move, direction_facing_];
	
	audio_stop_all();
	audio_play_sound(a_battle_transtion, 10, false);

	fadeout(_battle_room, _fade_color, _fade_speed, _battle_location_x, _battle_location_y);
	
	sprite_index = sprite_[player.move, last_direction_];
	
	//Destroy enemy when leaving the room
	//instance_destroy(other);
}