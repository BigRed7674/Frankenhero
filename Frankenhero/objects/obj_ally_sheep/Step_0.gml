/// @description Insert description here
// You can write your code in this editor

if instance_exists( obj_player )
{
	switch ( state )
	{
		case "following":
			move_x = obj_player.x
			move_y = obj_player.y
			if distance_to_object( obj_player ) > 0
			{
			spd = move_spd
			}
			else { spd = 0 }
		break
		
		case "attacking":
			spd = attack_spd
			if distance_to_point( move_x , move_y ) < 5
			{
				spd = 0
				state = "returning"
			}
			//collision
			x_spd = lengthdir_x(spd, dir)
			y_spd = lengthdir_y(spd, dir)
			if place_meeting( x + x_spd , y + y_spd, obj_wall)
			|| place_meeting( x + x_spd, y + y_spd , obj_enemy_parent )
			{
				spd = 0
				state = "returning"
			}
		break
		
		case "returning":
			spd = return_spd
			move_x = obj_player.x
			move_y = obj_player.y
			if distance_to_object( obj_player ) < 5
			{
				state = "following"
			}
		
		break
	}
	
	/*if attacking = false
	{
		
	}
	else
	{
		
		dir = obj_player.aim_dir
		spd = attack_spd
		x_spd = lengthdir_x(spd, dir)
		y_spd = lengthdir_y(spd, dir)
		//collision
		if place_meeting( x + x_spd , y , obj_wall )
		{
			x_spd = 0
		}
		if place_meeting( x , y + y_spd , obj_wall )
		{
			y_spd = 0
		}
		//Move the Ally
		x += x_spd;
		y += y_spd;

	}*/
}


move_towards_point( move_x , move_y , spd)


dir = point_direction( x , y , move_x , move_y )
// get the correct face
if dir > 90 && dir < 270 { face = -1 }
else { face = 1 }