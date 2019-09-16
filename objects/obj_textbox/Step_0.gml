/// @description Insert description here
//If "Z" is pressed
if(obj_input.action_two_pressed_){
	//If they press the button, it prints all of the text
	if(counter_ < str_length_) {
		counter_ = str_length_;	
	}else if(page_ < array_length_1d(text_)-1){	//If there are more pages, continue moving through the dialog
		page_++;
		event_perform(ev_other, ev_user1);
	}else{ //If not more pages, remove the dialog from the screen
		instance_destroy();	
	}
}