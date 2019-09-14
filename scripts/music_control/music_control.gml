var _music = argument[irandom(argument_count-1)]; //choose music
var _play = audio_play_sound(_music,1,true); // play sound, repeat for music
audio_sound_gain(_play,global.music_volume,0); //Set this sound to the global volume