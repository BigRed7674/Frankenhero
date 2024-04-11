var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

x=_cam_x-70;
y=_cam_y+150;

draw_sprite_ext( sprite_index , image_index , _cam_x-70 ,_cam_y+150,
		1 , 1 , image_angle , image_blend , image_alpha )
