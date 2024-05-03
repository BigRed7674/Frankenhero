/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists( obj_player )
{
	move_spd = obj_player.move_speed
}

// initial values
move_x = 0
move_y = 0

// state machine
follow_distance = 0
state = "following"
timer = 0
attack_time = 30
return_time = 10
return_spd = 5