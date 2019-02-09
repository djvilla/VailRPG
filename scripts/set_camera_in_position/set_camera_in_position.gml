///@arg camera
///@arg target
var _camera = argument0;
var _target = argument1;

if(!instance_exists(_target)){
	exit;
}

_camera.x = _target.x;
_camera.y = _target.y-8;