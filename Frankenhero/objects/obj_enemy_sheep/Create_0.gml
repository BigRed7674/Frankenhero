// Inherit the parent event
event_inherited();

hp = 100
maxHp = 100

spd = 0
wander_spd = 0.5
move_spd = 1
charge_spd = 10
dir = 0
x_spd = 0
y_spd = 0


// state machine
state = 0

// wander state
wait_time = 60
move_time = 5*60
wander_timer = irandom( move_time )
wander_distance = 200

// charge state
notice_distance = 200
charge_timer = 0
notice_time = 60
windup_time = 60
recover_time = 2*60
bullet_instance = noone
bullet_x_offset = 5
bullet_y_offset = -38


//drawing
sheep_sprite[0] = spr_enemy_sheep_moving
sheep_sprite[1] = spr_enemy_sheep_charging
