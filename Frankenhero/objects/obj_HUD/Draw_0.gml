var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _border = 8;
var _spr_pos_x = _cam_x + _border;
var _spr_pos_y = _cam_y + _border;
if room_get_name(room) != "rm_lobby"
{
	draw_sprite(spr_hud_logo, 0, _spr_pos_x, _spr_pos_y);
	for (var _i=0; _i < player_max_hp; _i++)
	{
		//show current HP
		var _image = 1;
		if _i+1 <= player_hp { _image = 2; };
		
		var _sep = 4;
		draw_sprite(spr_hud_logo, _image, _cam_x + _border + _sep*_i, _cam_y + _border );
	}
}