/// @desc
player_stats(); //Create the variables for the player stats.
global.one_second = game_get_speed(gamespeed_fps);
global.max_enemies = 0;
global.is_in_battle = false; //Tells objects when to fight
instance_create_layer(0, 0, "Instances", obj_input);

audio_play_sound(a_music, 10, true);

if(window_get_fullscreen()){
	window_set_fullscreen(false);
}else {
	window_set_fullscreen(true);
}