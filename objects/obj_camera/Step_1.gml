//If view is not enabled in a new room, set the settings
if(!view_enabled){
	view_set_wport(0, global.gameWidth);
	view_set_hport(0, global.gameHeight);
	view_set_visible(0, true);
	camera_set_view_mat(camera_, vm_);	//Set view matrix to the camera
	camera_set_proj_mat(camera_, pm_);	//Set the projection matrix to the camera
	//Assign a view to a camera
	view_camera[0] = camera_;
	//Enable the view
	view_enabled = true;
}
//Make sure the game window matches the global width and heights
if(window_get_width() != global.gameWidth*global.zoom
&& window_get_height() != global.gameHeight*global.zoom){
	
	window_set_size(global.gameWidth*global.zoom, global.gameHeight*global.zoom);
	//Change the surface to the correct resoultion
	surface_resize(application_surface, global.gameWidth*global.resolution, global.gameHeight*global.resolution)
	//Change the gui to match the size of the window
	display_set_gui_size(global.gameWidth,global.gameHeight);
}