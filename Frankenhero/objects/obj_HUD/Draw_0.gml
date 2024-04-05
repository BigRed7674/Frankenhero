var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);
if room_get_name(room) != "rm_init"
{
	var _border = 8;
	draw_sprite(spr_HUD_logo, 0, _camX+_border, _camY+_border);
	
	for (var i=0; i < playerMaxHp; i++)
	{
		//show current HP
		var _image = 1;
		if i+1 <= playerHp { _image = 2; };
		
		var _sep = 4;
		draw_sprite(spr_HUD_logo, _image, _camX + _border + _sep*i, _camY + _border );
	}
}