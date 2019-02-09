///@param bounce
var _bounce = argument0;

// Apply friction when sliding on walls tile
if tile_place_meeting(x+lengthdir_x(speed_, direction_), y+lengthdir_y(speed_, direction_), collision_tile1_) and !_bounce {
	speed_ = approach(speed_, 0, friction_/2);
}
// Apply friction when sliding on water tile
if tile_place_meeting(x+lengthdir_x(speed_, direction_), y+lengthdir_y(speed_, direction_), collision_tile2_) and !_bounce {
	speed_ = approach(speed_, 0, friction_/2);
}
// Apply friction when sliding on wall object
if place_meeting(x+lengthdir_x(speed_, direction_), y+lengthdir_y(speed_, direction_), obj_wall) and !_bounce {
	speed_ = approach(speed_, 0, friction_/2);
}


var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if speed_ <= 0 exit; // No need to check for collisions

//Horizontal Collision for tiles
if tile_place_meeting(x+_x_speed, y, collision_tile1_) || tile_place_meeting(x+_x_speed, y, collision_tile2_) || place_meeting(x+_x_speed, y, obj_wall) {
	while !tile_place_meeting(x+sign(_x_speed), y, collision_tile1_) && !tile_place_meeting(x+sign(_x_speed), y, collision_tile2_) && 
		  !place_meeting(x+sign(_x_speed), y, obj_wall) {
		x += sign(_x_speed);
	}
	
	if _bounce {
		_x_speed = -(_x_speed)*bounce_amount_;
	} else {
		_x_speed = 0;
	}
	
}
x += _x_speed;

//Wall tile y
if tile_place_meeting(x, y+_y_speed, collision_tile1_) || tile_place_meeting(x, y+_y_speed, collision_tile2_) || place_meeting(x, y+_y_speed, obj_wall) {
	while !tile_place_meeting(x, y+sign(_y_speed), collision_tile1_) && !tile_place_meeting(x, y+sign(_y_speed), collision_tile2_) && 
		  !place_meeting(x, y+sign(_y_speed), obj_wall) {
		y += sign(_y_speed);
	}
	
	if _bounce {
		_y_speed = -(_y_speed)*bounce_amount_;
	} else {
		_y_speed = 0;
	}
	
}
y += _y_speed;



// Make sure to update speed and direction
speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);