/// @desc Attack State
image_speed = 0.8;

if(animate_hit_frame(1)){
	var _angle = direction_facing_*90;
	var _life = 3;
	var _target_array = [obj_enemy_parent];
	var _damage = 1;
	var _knockback = 8;
	var _hitbox = create_hitbox(spr_sword_hitbox, x, y, _angle, _life, _target_array, _damage, _knockback);
	sound_control(a_swipe);
	
	//Align the up frame and down frame hitbox better
	switch direction_facing_{
		case dir.up:
		_hitbox.y -= 4;
		break;
		
		default:
		_hitbox.y -= 8;
	}
}

if(animate_hit_frame(image_number - 1)){
	state_ = player.move;
}