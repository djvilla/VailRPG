///@arg x_pos_check
///@arg y_pos_check
///@arg layer_id

var _xx = argument0;
var _yy = argument1;
var _layer_id = layer_tilemap_get_id(layer_get_id(argument2));

//Save current position
var _xp = x;	//Previous x position
var _yp = y;	//Previous y position

//Update position (Set x and y to where we want to move)
x = _xx;
y = _yy;

//Check for collision
var _meeting = tilemap_get_at_pixel(_layer_id, bbox_left, bbox_top) ||			//Bounding box top left
			   tilemap_get_at_pixel(_layer_id, bbox_right, bbox_top) ||			//Bounding box top right
			   tilemap_get_at_pixel(_layer_id, bbox_left, y) ||					//Bounding box mid left
			   tilemap_get_at_pixel(_layer_id, bbox_right, y) ||				//Bounding box mid right
			   tilemap_get_at_pixel(_layer_id, bbox_left, bbox_bottom) ||		//Bounding box bottom left
			   tilemap_get_at_pixel(_layer_id, bbox_right, bbox_bottom) ||		//Bounding box bottom right
			   tilemap_get_at_pixel(_layer_id, x, y);							//Bounding box center

//Move back
x = _xp;
y = _yp;

//Return
return _meeting;