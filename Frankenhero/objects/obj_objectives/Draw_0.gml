var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

var _x_border = 8;
var _y_border_lobby = 8;
var _y_border_levels = 56;

var _spr_x_pos = _x_border +_camX;
var _spr_y_pos_lobby = _y_border_lobby + _camY;
var _spr_y_pos_levels = _y_border_levels + _camY;

//Draw for Lobby
if room_get_name(room) == "rm_lobby"
{
	draw_sprite(spr_HUD_objectives, 1, _spr_x_pos, _spr_y_pos_lobby);	
}	

//Draw for Levels
if room_get_name(room) != "rm_lobby"
{
	draw_sprite(spr_HUD_objectives, 2, _spr_x_pos, _spr_y_pos_levels);
}