var _cam = view_camera[0]
var _cam_width = camera_get_view_width(_cam)
var _cam_height = camera_get_view_height(_cam)

// center on the player
if instance_exists( obj_player )
{
	x = obj_player.x  - _cam_width/2
	y = obj_player.y_center - _cam_height/2
}

/* clamp camera position to room borders
x = clamp( x , 0 , room_width - _cam_width)
y = clamp( y , 0 , room_height - _cam_height) */

// set the camera position
camera_set_view_pos( _cam , x , y )