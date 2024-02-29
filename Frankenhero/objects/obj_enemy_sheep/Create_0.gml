// Inherit the parent event
event_inherited();

hp = 100

spd = 0
chase_spd = 1
dir = 0
x_spd = 0
y_spd = 0

face = 1

// state machine
state = 0
// shooting state
cd_sec = 3
cooldown_time = cd_sec*60
shoot_timer = irandom( cooldown_time )
windup_time = 60
recover_time = 45
bullet_instance = noone
bullet_x_offset = 5
bullet_y_offset = -38
