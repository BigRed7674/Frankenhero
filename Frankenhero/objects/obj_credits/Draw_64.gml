draw_set_font(fnt_pixel)
draw_set_halign(fa_center)

for( var _index=0 ; _index < ds_list_size( credits ) ; _index++)
{
	var _scale = credits_scale[ _index ]
	var _x = camera_get_view_width(view_camera[0]) / 2 + 205
	draw_text_transformed( _x , current_y + _index*100, 
		ds_list_find_value( credits , _index), _scale, _scale, 0);
}