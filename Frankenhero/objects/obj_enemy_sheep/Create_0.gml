// Inherit the parent event
event_inherited();

hp = 100
maxHp = 100

spd = 0
wander_spd = 0.5
move_spd = 1
launch_spd = 5
attack_spd = 10
dir = 0
x_spd = 0
y_spd = 0


// state machine
state = "wait"

// wander state
wait_time = 60
move_time = 5*60
wander_timer = irandom( wait_time )
wander_distance = 200

// attack state
notice_distance = 250
attack_timer = 0
notice_time = 100
charge_time = 40
attack_time = 30
recover_time = 60
bounce = false


/*bullet_instance = noone
bullet_x_offset = 5
bullet_y_offset = -38*/

//drawing
sheep_sprite[0] = spr_enemy_sheep_move
sheep_sprite[1] = spr_enemy_sheep_charge
sheep_sprite[2] = spr_enemy_sheep_launch