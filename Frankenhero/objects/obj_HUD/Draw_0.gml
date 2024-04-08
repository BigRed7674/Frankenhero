var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
var _border = 8;
var _spr_pos_x = _camX + _border;
var _spr_pos_y = _camY + _border;
if room_get_name(room) != "rm_init"
{
	if point_in_rectangle(mouse_x, mouse_y, _spr_pos_x, _spr_pos_y, _spr_pos_x + 40, _spr_pos_y + 40)
	{
		draw_sprite(spr_HUD_logo, 3, _spr_pos_x, _spr_pos_y);
	} else {
		draw_sprite(spr_HUD_logo, 0, _spr_pos_x, _spr_pos_y);
	}
	for (var i=0; i < playerMaxHp; i++)
	{
		//show current HP
		var _image = 1;
		if i+1 <= playerHp { _image = 2; };
		
		var _sep = 4;
		draw_sprite(spr_HUD_logo, _image, _camX + _border + _sep*i, _camY + _border );
	}
}
if room_get_name(room) == "rm_init"
{
	
	if point_in_rectangle(mouse_x, mouse_y, _spr_pos_x, _spr_pos_y, _spr_pos_x + 40, _spr_pos_y + 40)
	{
		draw_sprite(spr_HUD_logo, 3, _camX+_border, _camY+_border);
	} else {
		draw_sprite(spr_HUD_logo, 0, _camX+_border, _camY+_border);
	}
}