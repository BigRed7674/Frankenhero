// state machine
switch( state )
{
	// wait for enemy to shoot state
	case "wait":
	
		
		
	
	break
	
	// shoot and travel
	case "shoot":
		
		// movement
		x_spd = lengthdir_x( spd , dir )
		y_spd = lengthdir_y( spd , dir )
		x += x_spd
		y += y_spd
		
		// updated depth
		depth = -y
	
	break
}

// cleanup
// out of room bounds
var _pad = 100000
if bbox_right < -_pad || bbox_left > room_width + _pad ||
bbox_bottom < -_pad || bbox_top > room_height + _pad
{
	destroy = true
}
//player collision
if hit_confirm == true { destroy = true; };
//actually destroy self
if destroy = true { instance_destroy() }
// wall collision
if place_meeting( x , y , obj_wall_solid ) { destroy = true }
// enemy collision
if place_meeting( x , y , obj_enemy_parent )
{
	destroy = true
	var _enemy = instance_place( x , y , obj_enemy_parent )
	_enemy.dir = dir
	_enemy.spd = spd
	_enemy.attack_timer = 0
	_enemy.state = "recover"

}
if place_meeting( x , y , obj_damage_player ) { destroy = true }