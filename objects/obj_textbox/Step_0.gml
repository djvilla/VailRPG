/// @description Insert description here
//If "Z" is pressed
if(obj_input.action_two_pressed_){
	//If there are more pages, continue moving through the dialog
	if(page_ < array_length_1d(text_)-1){
		page_++;
	}else{ //If not more pages, remove the dialog from the screen
		instance_destroy();	
	}
}