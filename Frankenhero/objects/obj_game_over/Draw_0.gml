var _camX = camera_get_view_x(view_camera[0]);
var _camW = camera_get_view_width(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

//draw a rectangle over screen
draw_set_alpha(alpha*alphaMax);
draw_rectangle_color(_camX, _camY, _camX + _camW, _camY + _camH, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

//draw the text
	//"game over"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_set_font(fnt_gameboy);
	var _gameOverOffset = -32;
	var _restartOffset = 40;
	draw_text_transformed(_camX + _camW/2, _camY + _camH/2 + _gameOverOffset, "Game Over",3,3,0);
	draw_text_transformed(_camX + _camW/2, _camY + _camH/2 + _restartOffset,"- Click Shoot To Restart - ",1,1,0);
	draw_set_alpha(1);



