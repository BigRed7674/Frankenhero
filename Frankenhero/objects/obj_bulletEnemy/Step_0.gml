// state machine
switch( state )
{
	// wait for enemy to shoot state
	case 0:
	
		// aim for the player
		if instance_exists( obj_player )
		{
			dir = point_direction( x , y , obj_player.x , obj_player.y )
		}
		
		// set depth to make bullet more visible
		depth = -y - 50
	
	break
	
	// shoot and travel
	case 1:
	
		// movement
		x_spd = lengthdir_x( spd , dir )
		y_spd = lengthdir_y( spd , dir )
		x += x_spd
		y += y_spd
		
		// updated depth
		depth = -y
	
	break
}

// cleanup
// out of room bounds
var _pad = 16
if bbox_right < -_pad || bbox_left > room_width + _pad ||
bbox_bottom < -_pad || bbox_top > room_height + _pad
{
	destroy = true
}

if destroy = true { instance_destroy() }
// wall collision
if place_meeting( x , y , obj_wallSolid ) { destroy = true }
// player collision
if place_meeting( x , y , obj_player ) && playerDestroy = true { destroy = true }