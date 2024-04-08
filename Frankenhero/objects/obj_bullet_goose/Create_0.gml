// Inherit the parent event
event_inherited();

// speed
spd = 4

attack_angle = 15
// aim for the player
if instance_exists( obj_player )
{
	dir = point_direction( x , y , obj_player.x , obj_player.y - obj_player.sprite_height/2 )
}
dir += irandom_range( -attack_angle , attack_angle )

// state machine
state = "wait"
// wait = not moving, aim for the player,
	// and wait for the enemy to shoot
// shoot = shoot towards the player

// cleanup
destroy = false
player_destroy = true


