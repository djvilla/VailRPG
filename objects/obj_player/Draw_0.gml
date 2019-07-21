/*if(room != rm_pause){
	//draw_sprite(spr_player_shadow, image_index, x, y);
	draw_self();
}*/

//Debugging
//show_debug_message(string(instance_count));
//draw_text(200, 200, string(instance_count));

draw_self();
draw_self_flash(shader_white, 12, alarm[0]); //Flash when hit