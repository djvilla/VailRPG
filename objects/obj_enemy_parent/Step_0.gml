//depth = -y;
/*
if(health <= 0){
	instance_destroy();
}
*/

//Testing
if(health_ <= 0 && state_ != enemy.hit){
	instance_destroy();
}

if state_ != noone{
	event_user(state_);
}
//Test End