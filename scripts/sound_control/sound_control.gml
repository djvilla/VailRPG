var _snd = argument[irandom(argument_count-1)]; //choose sound
var _play = audio_play_sound(_snd,1,false); // play sound and set local var
audio_sound_gain(_play,global.sound_volume,0); //Set this sound to the global volume
audio_sound_pitch(_play,global.pitch); //change pitch