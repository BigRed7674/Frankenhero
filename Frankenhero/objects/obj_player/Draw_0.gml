//Draw Player
draw_self();

// first level
if room_get_name(room) == "rm_sheep"
{
	//Draw the Flashlight
	if aim_dir >= 0 && aim_dir < 180 {
		draw_flashlight();
	}
	draw_self();
	//draw flashlight behind player
		if aim_dir >= 180 && aim_dir <= 360 {
		draw_flashlight(); //This code is in custom_scripts
	}
}

// second level
if variable_global_exists("level1_complete")
{
	if global.level1_complete
	|| room_get_name(room) == "rm_test"
	{
		//Draw the Ally Sheep
		if !instance_exists( player_ally[0] )
		{
			player_ally[0] = instance_create_depth( x - 100 , y , depth + 1 , obj_ally_sheep)
		}

	}
}
