/// @desc Fadeout to next room
if(active_ == 0){
	sound_control(sound_transition_);
	fadeout(target_, c_black, 0.05, xx_, yy_);
	active_ = 1;
}