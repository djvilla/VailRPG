/// @desc Initalize
event_inherited();

enum basic_enemy {
	move,
	idle,
	wait
}

//Sprite Variables
image_index = 0;
//Sprite array
enemy_sprite_ = [spr_enemy_right,
				  spr_enemy_up,
				  spr_enemy_left,
				  spr_enemy_down];

//state_ = move_state;
enemy_stats();

alarm[1] = random_range(0, 1) * global.one_second;