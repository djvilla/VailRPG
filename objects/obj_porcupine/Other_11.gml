/// @desc Idle state
image_index = 0;
image_speed = 0;
sprite_index = spr_porcupine_run;


if(alarm[1] <= 0){
	alarm[1] = random_range(2, 4) * global.one_second;
	state_ = porcupine.move;
	direction_ = random(360);
}
if(global.is_in_battle){
	porcupine_attack();
}

//Reset Attack State if the player isn't near by
/*if(instance_exists(obj_player)){
	if(point_distance(x, y, obj_player.x, obj_player.y) > 16 && sprite_index == spr_porcupine_attack){
		sprite_index = spr_porcupine_run;
	}
}*/