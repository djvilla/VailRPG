if(instance_exists(target_)){
	viewx_ = target_.x;
	viewy_ = target_.y;
	//Move towards player
	vm_ = matrix_build_lookat(viewx_, viewy_, -10, viewx_, viewy_, 0, 0, 1, 0);
	//Set Camera
	camera_set_view_mat(camera_, vm_);
}else{
	instance_destroy();
}