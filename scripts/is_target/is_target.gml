///@arg value
///@arg target_array
var _value = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);

for(var i=0; i<_array_length; i++){
	if(_value == _array[i]){
		return true;
	}
	if(object_is_ancestor(_value, _array[i])){
		return true;
	}
}

return false;