//Initalize the game
InitGame();
//Create Camera
instance_create_depth(0, 0, 0, obj_camera);

//Set the number of enemies to spawn in this room
//global.max_enemies = instance_number(obj_spawn_enemies);