// Inherit the parent event
event_inherited();


// speeds
wander_spd = 0.5
launch_spd = 5
attack_spd = 10


// state machine
state = "wait"

// wander state
wait_time = 60
move_time = 5*60
wander_timer = irandom( wait_time )
wander_distance = 200

// attack state
attack_timer = 0 // don't change this
notice_distance = 250
notice_time = 100
// attacking
charge_time = 40 // telegraphing attack
attack_time = 30 // actually attacking
recover_time = 60 // wait time before next action


/*bullet_instance = noone
bullet_x_offset = 5
bullet_y_offset = -38*/

//drawing
sheep_sprite[0] = spr_enemy_sheep_move
sheep_sprite[1] = spr_enemy_sheep_charge
sheep_sprite[2] = spr_enemy_sheep_launch