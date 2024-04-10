var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_width = camera_get_view_width(view_camera[0])
var _cam_height = camera_get_view_height(view_camera[0])

draw_text_transformed(current_x + 400, 630, 
	"" + string(sentence), 2, 2, 0);
