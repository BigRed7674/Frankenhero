/// @description Insert description here
// You can write your code in this editor

var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _xscale = camera_get_view_width(view_camera[0]) / sprite_width
var _yscale = camera_get_view_height(view_camera[0]) / sprite_height

	draw_sprite_ext( sprite_index , image_index , _cam_x , _cam_y ,
		_xscale , _yscale , image_angle , image_blend , image_alpha )