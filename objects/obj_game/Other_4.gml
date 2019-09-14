/// @desc 

//Spawn Enemies
global.max_enemies = instance_number(obj_spawn_enemies);

//Change Song from different rooms without repeating
if(global.is_in_battle){
	audio_stop_sound(song_current_);
	song_current_ = song_normal_battle_;
	music_control(song_current_);
}else if(room == rm_grass_village_0){
	audio_stop_sound(song_current_);
	song_current_ = song_grass_town_;
	music_control(song_current_);
}else if(!global.is_in_battle && room != rm_grass_village_0 && song_current_ != song_grass_overworld_){
	audio_stop_sound(song_current_);
	song_current_ = song_grass_overworld_;
	music_control(song_current_);
}