/// @desc Draw fadeout
//Set the colors to the one specified by the script
draw_set_color(fade_color_);
draw_set_alpha(image_alpha);

if(room != target_){
	image_alpha += fade_speed_;
	if(image_alpha == 1){
		obj_player.x = xx_;
		obj_player.y = yy_;
		//Destroy enemy if player collided with one
		if(obj_player.enemy_collided_id_ != noone){
			instance_destroy(obj_player.enemy_collided_id_);
			obj_player.enemy_collided_id_ = noone;
		}
		//change players position and sprite back
		if(room == rm_battle){
			with(obj_player){
				sprite_index = sprite_[player.move, last_direction_];
				image_index = 0;
				direction_facing_ = last_direction_;
			}
		}
		room_goto(target_);
	}
}else{
	image_alpha -= fade_speed_;
	if(image_alpha <= 0){
		instance_destroy();
	}
}

//Need to set image alpha back to 1 or all objects disappear
draw_rectangle(0, 0, view_wport*2, view_hport*2, false);
draw_set_alpha(1);