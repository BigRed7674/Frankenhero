// Inherit the parent event
event_inherited();

hp = 100

spd = 0
chase_spd = 0.5
dir = 0
x_spd = 0
y_spd = 0

face = 1

// state machine
state = 0
// shooting state
cooldownTime = 4*60
shootTimer = irandom( cooldownTime )
windupTime = 60
recoverTime = 45
bulletInst = noone
bulletXoffset = 5
bulletYoffset = -38
