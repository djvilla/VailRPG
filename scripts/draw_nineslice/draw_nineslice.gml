///@args sprite_index
///@args x1
///@args y1
///@args x2
///@args y2
var _sprite = argument0;
var _x1 = argument1;
var _y1 = argument2;
var _x2 = argument3;
var _y2 = argument4;

var _slice_width = sprite_get_width(_sprite)/3;
var _slice_height = sprite_get_height(_sprite)/3;
var _actual_width = _x2-_x1;
var _actual_height = _y2-_y1;

//Draw top slice
//Top left
draw_sprite_part_ext(_sprite, 0, 0, 0, _slice_width, _slice_height, _x1, _y1, 1, 1, c_white, 1);
//Top middle
draw_sprite_part_ext(_sprite, 0, _slice_width, 0, _slice_width, _slice_height, _x1+_slice_width, _y1, (_actual_width-_slice_width*2)/_slice_width, 1, c_white, 1);
//Top Right
draw_sprite_part_ext(_sprite, 0, _slice_width*2, 0, _slice_width, _slice_height, _x2-_slice_width, _y1, 1, 1, c_white, 1);

//Draw Middle slice
//Middle left
draw_sprite_part_ext(_sprite, 0, 0, _slice_height, _slice_width, _slice_height, _x1, _y1+_slice_height, 1, (_actual_height-_slice_height*2)/_slice_height, c_white, 1);
//Middle middle
draw_sprite_part_ext(_sprite, 0, _slice_width, _slice_height, _slice_width, _slice_height, _x1+_slice_width, _y1+_slice_height, (_actual_width-_slice_width*2)/_slice_width, (_actual_height-_slice_height*2)/_slice_height, c_white, 1);
//Middle Right
draw_sprite_part_ext(_sprite, 0, _slice_width*2, _slice_height, _slice_width, _slice_height, _x2-_slice_width, _y1+_slice_height, 1, (_actual_height-_slice_height*2)/_slice_height, c_white, 1);

//Draw bottom slice
//Bottom left
draw_sprite_part_ext(_sprite, 0, 0, _slice_height*2, _slice_width, _slice_height*2, _x1, _y2 - _slice_height, 1, 1, c_white, 1);
//Bottom middle
draw_sprite_part_ext(_sprite, 0, _slice_width, _slice_height*2, _slice_width, _slice_height, _x1+_slice_width, _y2-_slice_height, (_actual_width-_slice_width*2)/_slice_width, 1, c_white, 1);
//Bottom Right
draw_sprite_part_ext(_sprite, 0, _slice_width*2, _slice_height*2, _slice_width, _slice_height, _x2-_slice_width, _y2-_slice_height, 1, 1, c_white, 1);
