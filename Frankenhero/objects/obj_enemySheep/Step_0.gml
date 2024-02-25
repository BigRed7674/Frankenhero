// chase player
if instance_exists(obj_player)
{
	dir = point_direction( x , y , obj_player.x , obj_player.y )
}

// getting the speeds
xspd = lengthdir_x( spd , dir )
yspd = lengthdir_y( spd , dir )

// get the correct face
if xspd > 0 { face = 1 }
else { face = -1 }

// collisions
if place_meeting( x + xspd , y , obj_wall )
|| place_meeting( x + xspd , y , obj_enemyParent)
{
	xspd = 0
}
if place_meeting( x , y + yspd , obj_wall )
|| place_meeting( x , y + yspd , obj_enemyParent)
{
	yspd = 0
}

// moving
x += xspd
y += yspd


// Inherit the parent event
	// getting damaged and dying
event_inherited();