/// @desc Respawn enemies
if(alarm[0] <= 0){
	alarm[0] = random_range(10, 15) * global.one_second;
	if(instance_number(obj_enemy_parent) < global.max_enemies && !instance_exists(obj_battle)){
		instance_create_layer(x, y, "Instances", enemies_[map_room.grass, grass_enemy.porcupine]);
	}
}