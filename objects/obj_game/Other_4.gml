/// @desc 

//Spawn Enemies
global.max_enemies = instance_number(obj_spawn_enemies);

//Change Song
if(room == rm_battle){
	audio_play_sound(a_battle, 10, true);
}else if(!audio_is_playing(a_music)){
	audio_stop_sound(a_battle);
	audio_play_sound(a_music, 10, true);
}