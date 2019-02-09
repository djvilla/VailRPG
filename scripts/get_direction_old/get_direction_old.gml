///get_direction()
var _sprites = argument0

face_ = round(dir_/90);
//If face is 4, return it to 0
if(face_ == 4){
	face_ = 0;	
}

sprite_index = _sprites[face_];