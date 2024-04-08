// Inherit the parent event
event_inherited();

// speeds
wander_spd = .5
attack_spd = 2


// state machine
state = "wait"

// wander state
wait_time = 60
move_time = 5*60
wander_timer = irandom( wait_time )
wander_distance = 200

// attack state
notice_distance = 400
attack_timer = 0
notice_time = 100
attack_angle = 10
shoot_time = 30
attack_time = shoot_time * 4
recover_time = 60
bullet_goose = noone