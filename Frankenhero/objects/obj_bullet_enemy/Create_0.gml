// Inherit the parent event
event_inherited();

dir = 0
spd = 2
x_spd = 0
y_spd = 0

// state machine
state = 0
// 0 = not moving, aim for the player,
	// and wait for the enemy to shoot
// 1 = shoot towards the player

// cleanup
destroy = false
player_destroy = true
