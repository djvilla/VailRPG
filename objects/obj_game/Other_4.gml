/// @desc 

//Spawn Enemies
global.max_enemies = instance_number(obj_spawn_enemies);

//Change Song from the battle song
if(global.is_in_battle){
	audio_play_sound(a_battle, 10, true);
}else if(!audio_is_playing(overworld_song_)){
	audio_stop_sound(a_battle);
	audio_play_sound(overworld_song_, 10, true);
}