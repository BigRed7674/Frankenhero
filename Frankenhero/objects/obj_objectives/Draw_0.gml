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
	if global.dialogue_case == "lobby2" {
		if !(global.level1_complete) {
			draw_sprite(spr_HUD_objectives, 2, _spr_x_pos, _spr_y_pos_lobby)
		}
	} else if global.dialogue_case == "lobby4" and !(global.level2_complete) {
		draw_sprite(spr_HUD_objectives, 4, _spr_x_pos, _spr_y_pos_lobby);	
	} else {
		draw_sprite(spr_HUD_objectives, 1, _spr_x_pos, _spr_y_pos_lobby);
	}
}

if room_get_name(room) == "rm_geese"
{
	draw_sprite(spr_HUD_objectives, 5, _spr_x_pos, _spr_y_pos_levels);
}

//Draw for Levels
if room_get_name(room) == "rm_sheep"
{
	draw_sprite(spr_HUD_objectives, 3, _spr_x_pos, _spr_y_pos_levels);
}