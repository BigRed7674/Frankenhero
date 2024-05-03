damage = 1
hit_confirm = false

dir = 0
spd = 0
x_spd = 0
y_spd = 0

// speed
spd = 6

attack_angle = 15
// aim in direction of goose movement
if instance_exists( obj_ally_goose )
{
	dir = obj_ally_goose.dir
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