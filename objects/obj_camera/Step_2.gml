if(instance_exists(target_)){
	//Moves the camera object to the player
	viewx_ = lerp(viewx_, target_.x, 0.08);
	viewy_ = lerp(viewy_, target_.y, 0.08);
	
	//Create smoother camera movement
	//viewx_ = round_n(viewx_, (1/scale_)); //round to the nearest 0.25
	//viewy_ = round_n(viewy_, 1/scale_); //scale_ is equal to 4 in this case
	
	//Clamp to stop the view from moving outside the bounds of the room
	viewx_ = clamp(viewx_, global.gameWidth/2, room_width-global.gameWidth/2);
	viewy_ = clamp(viewy_, global.gameHeight/2, room_height-global.gameHeight/2);

	//Move towards player
	vm_ = matrix_build_lookat(viewx_, viewy_, -10, viewx_, viewy_, 0, 0, 1, 0);
	//Set Camera
	camera_set_view_mat(camera_, vm_);
}else
	exit;
	