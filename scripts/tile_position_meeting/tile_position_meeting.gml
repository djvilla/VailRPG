///@arg x_pos_check
///@arg y_pos_check
///@arg layer_id

var _xx = argument0;
var _yy = argument1;
var _layer_id = layer_tilemap_get_id(layer_get_id(argument2));

//Check for collision
var _meeting = tilemap_get_at_pixel(_layer_id, _xx, _yy);		//Checks if the point interacts with a tile

//Return
return _meeting;