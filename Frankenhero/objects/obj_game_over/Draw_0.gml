var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_width = camera_get_view_width(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_height = camera_get_view_height(view_camera[0]);

//draw a rectangle over screen
draw_set_alpha(alpha*alpha_max);
draw_rectangle_color(_cam_x, _cam_y, _cam_x + _cam_width, _cam_y + _cam_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

//draw the text
	//"game over"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_set_font(fnt_gameboy);
	var _game_over_offset = -32;
	var _restart_offset = 40;
	draw_text_transformed(_cam_x + _cam_width/2, _cam_y + _cam_height/2 + _game_over_offset, "Game Over",3,3,0);
	draw_text_transformed(_cam_x + _cam_width/2, _cam_y + _cam_height/2 + _restart_offset,"- Click To Restart - ",1,1,0);
	draw_set_alpha(1);



