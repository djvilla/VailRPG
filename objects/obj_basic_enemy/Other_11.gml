/// @descr Idle State
image_index = 0;

if(alarm[1] <= 0){
	alarm[1] = random_range(2, 4) * global.one_second;
	dir_ = random(360);
}