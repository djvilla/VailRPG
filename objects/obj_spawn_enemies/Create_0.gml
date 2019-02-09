/// @desc

//Spawn enums
enum map_room{
	grass	
}

enum grass_enemy {
	porcupine	
}


enemies_[map_room.grass, grass_enemy.porcupine] = obj_porcupine;


if(room == rm_battle){
	instance_create_layer(x, y, "Instances", obj_player.enemy_collided_);
}else{
	instance_create_layer(x, y, "Instances", enemies_[map_room.grass, grass_enemy.porcupine]);
}
alarm[0] = random_range(10, 15) * global.one_second;
