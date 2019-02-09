/// move_state()
///@arg sprite_array

var _sprites = argument0

//Get Direction
dir_ = point_direction(0, 0, x_axis, y_axis)

//Get length
if(x_axis == 0 && y_axis == 0){
	len_ = 0;
}else{
	len_ = spd_;	
	get_direction_old(_sprites);
}

//Get the speed variables
hspd_ = lengthdir_x(len_, dir_);
vspd_ = lengthdir_y(len_, dir_);

//Horizontal Collision for tiles
if(tile_place_meeting(x+hspd_, y, "Collision0") || tile_place_meeting(x+hspd_, y, "Collision1")){
	while(!tile_place_meeting(x+sign(hspd_), y, "Collision0") && !tile_place_meeting(x+sign(hspd_), y, "Collision1")){
		x += sign(hspd_);	
	}
	hspd_ = 0;
}
//x += hspd_;
//Horizontal Collision for obj
if(place_meeting(x+hspd_, y, obj_wall)){
	while(!place_meeting(x+sign(hspd_), y, obj_wall)){
		x += sign(hspd_);	
	}
	hspd_ = 0;
}
x += hspd_;


//Vertical Collision for tiles
if(tile_place_meeting(x, y+vspd_, "Collision0") || tile_place_meeting(x, y+vspd_, "Collision1")){
	while(!tile_place_meeting(x, y+sign(vspd_), "Collision0") && !tile_place_meeting(x, y+sign(vspd_), "Collision1")){
		y += sign(vspd_);	
	}
	vspd_ = 0;
}
//y += vspd_;
//Vertical Collision for obj
if(place_meeting(x, y+vspd_, obj_wall)){
	while(!place_meeting(x, y+sign(vspd_), obj_wall)){
		y += sign(vspd_);	
	}
	vspd_ = 0;
}
y += vspd_;

//Check for battle encounter
/*
if(len_ == 1){
	var _rng = irandom(steps_);
	if(_rng == steps_ && steps_ <= 850){
			fadeout(rm_battle, c_white, 0.025, x, y);
			steps_ = 1000;
	}else{
		steps_ -= 1	
	}
}
*/

//Sprites
image_speed = 1.0;
if(len_ == 0){
	image_index = 0;
}

