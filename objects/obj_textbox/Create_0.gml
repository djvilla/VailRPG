/// @description Insert description here
// Set sprites to variables
box_ = spr_test_textbox;
frame_ = spr_test_portrait_frame;
portraits_ = spr_test_portrait;
namebox_ = spr_test_namebox;

//Buffers
x_buffer_ = 12;
y_buffer_ = 8;

//Get each sprite width and height for calculation
box_width_ = sprite_get_width(box_);
box_height_ = sprite_get_height(box_);
portrait_width_ = sprite_get_width(portraits_);
portrait_height_ = sprite_get_height(portraits_);
namebox_width_ = sprite_get_width(namebox_);
namebox_height_ = sprite_get_height(namebox_);
text_max_width_ = box_width_ - (2 * x_buffer_);

//Place the boxes near the bottom
portrait_x_ = (global.gameWidth - box_width_ - portrait_width_) * 0.5;
portrait_y_ = (global.gameHeight * 0.98) - portrait_height_;
box_x_ = portrait_x_ + portrait_width_;
box_y_ = portrait_y_;
namebox_x_ = box_x_;
namebox_y_ = box_y_ - namebox_height_;

//Text position
text_x_ = box_x_ + x_buffer_;
text_y_ = box_y_ + y_buffer_;
name_text_x_ = namebox_x_ + (namebox_width_/2);
name_text_y_ = namebox_y_ + (namebox_height_/2);

//Person who is talking
portrait_index_ = 0;

//Text for dialog
text_[0] = "This is a test string. This is a test string. This is a test string. This is a test string. This is a test string. This is a test string. This is a test string. This is a test string.";
text_[1] = "Second page of the dialog box";
page_ = 0; //Keeps track of which page the dialog box is in
//Name of the person talking
name_ = "name";

//Text color and font
text_color_ = c_black;
text_name_color = c_black;
text_font_ = fnt_text_12;

//Get size of current font
draw_set_font(text_font_);
text_height_ = string_height("M");