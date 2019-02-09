///@arg room
///@arg fade_color
///@arg fade_speed
///@arg x
///@arg y

var _fade = instance_create_depth(x, y, 0, obj_fade);

_fade.target_ = argument0;
_fade.image_alpha = 0;
_fade.fade_color_ = argument1;
_fade.fade_speed_ = argument2;
//Where the player is placed in the next room
_fade.xx_ = argument3; 
_fade.yy_ = argument4;