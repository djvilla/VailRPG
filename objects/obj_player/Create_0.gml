/// @desc Initalize

initalize_movement_entity(0.5, 1, "Collision0", "Collision1");
initialize_hurtbox_entity();

image_speed = 1.5;
acceleration_ = 1.0;
max_speed_ = 1.0;
player_stats();

enum player {
	move,
	attack,
	hit
}

enum dir{
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = starting_state_;

//Sprite Variables
direction_facing_ = dir.down;

//Sprite lookup table
//Movement
sprite_[player.move, dir.right] = spr_player_right;
sprite_[player.move, dir.up] = spr_player_up;
sprite_[player.move, dir.left] = spr_player_left;
sprite_[player.move, dir.down] = spr_player_down;

//Attacking
sprite_[player.attack, dir.right] = spr_player_swing_right;
sprite_[player.attack, dir.up] = spr_player_swing_up;
sprite_[player.attack, dir.left] = spr_player_swing_left;
sprite_[player.attack, dir.down] = spr_player_swing_down;

//For the Hit State
sprite_[player.hit, dir.right] = spr_player_right;
sprite_[player.hit, dir.up] = spr_player_up;
sprite_[player.hit, dir.left] = spr_player_left;
sprite_[player.hit, dir.down] = spr_player_down;


//state_ = move_state;
player_stats();

//Collided id for fadeout
enemy_collided_id_ = noone;

//Battle room to teleport too
battle_room_ = rm_battle;