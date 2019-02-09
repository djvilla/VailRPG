camera_ = camera_create();
//View Matrix
vm_ = matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0);
//Projection Matrix
pm_ = matrix_build_projection_ortho(global.gameWidth, global.gameHeight, 1, 3200);

//scale_ = view_wport[0] / global.gameWidth;

display_reset(8, true); //stops screen tearing

//Camera follow
viewx_ = 0;
viewy_ = 0;
target_ = obj_player;