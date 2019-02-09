/// @desc at every state
depth = -y;

//Stops movement In pause menus and room transitions
if(room != rm_pause && !instance_exists(obj_fade)){
	event_user(state_);
}else{
	image_index = 0;	
}

sprite_index = sprite_[state_, direction_facing_];

if(global.player_health <= 0 && !invincible_){
	instance_destroy();
}




/*get_input();

depth = -y;

if(room != rm_battle && room != rm_pause && !instance_exists(obj_fade)){
	script_execute(state_, player_sprite_);
}else{
	image_index = 0;	
}

//Pause 
if(!instance_exists(obj_fade)){
	if(pausekey && room != rm_battle && room != rm_pause){
		fadeout(rm_pause, c_white, 0.05, x, y);	
	}
	if(pausekey && room == rm_pause){
		fadeout(last_room_, c_white, 0.05, x, y);		
	}
}*/