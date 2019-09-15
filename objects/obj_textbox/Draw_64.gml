/// @description Insert description here
//----------Boxes-----------//
// Draw box
draw_sprite(box_, 0, box_x_, box_y_);
//Draw Portait Back
draw_sprite(frame_, 0, portrait_x_, portrait_y_); //0 is the frame back
//Draw Portrait
draw_sprite(portraits_, portrait_index_, portrait_x_, portrait_y_);
//Draw Portrait Frame
draw_sprite(frame_, 1, portrait_x_, portrait_y_); //1 is the frame in front of the portrait
//Draw Namebox
draw_sprite(namebox_, 0, namebox_x_, namebox_y_);
//----------Text-----------//
draw_set_font(text_font_);
//Change alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//Draw Name
var _c = text_name_color;
draw_text_color(name_text_x_, name_text_y_, name_, _c, _c, _c, _c, 1);
//reset Alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Draw Text
_c = text_color_;
draw_text_ext_color(text_x_, text_y_, text_[page_], text_height_, text_max_width_, _c, _c, _c, _c, 1);