/// @desc Hit Logic
if(hurtbox_entity_can_be_hit_by(other)){
	invincible_ = true;
	alarm[0] = global.one_second * 0.75; //How long the player is invincible for after a hit
	global.player_health -= other.damage_;
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback_);
	state_ = player.hit;
	sound_control(a_hurt);
	//event_user(state_);
}