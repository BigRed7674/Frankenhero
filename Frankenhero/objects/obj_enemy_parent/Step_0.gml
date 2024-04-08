// getting the speeds
x_spd = lengthdir_x( spd , dir )
y_spd = lengthdir_y( spd , dir )

// get the correct face
if dir > 90 && dir < 270 { face = -1 }
else { face = 1 }

// collisions
if place_meeting( x + x_spd , y , obj_wall )
|| place_meeting( x + x_spd , y , obj_enemy_parent)
{
	//x_spd = 0
	dir = -dir + 180
	bounce = true
}
if place_meeting( x , y + y_spd , obj_wall )
|| place_meeting( x , y + y_spd , obj_enemy_parent)
{
	//y_spd = 0
	dir = -dir
	bounce = true
}

if bounce
{
	spd *= bounce_multiplier
	bounce = false
}

// reset the speeds
x_spd = lengthdir_x( spd , dir )
y_spd = lengthdir_y( spd , dir )

// moving
x += x_spd
y += y_spd

// drawing
image_speed = spd

// set the depth
depth = -y

// receive damage
if place_meeting( x , y , obj_damage_enemy )
{
	var _inst = instance_place( x , y , obj_damage_enemy )
	
	// take damage from specific instance
	hp -= _inst.damage;
	
	// tell the damage instance to destroy itself
	//_inst.destroy = true;
}

// death
if hp <= 0
{
	destroy = true
}
