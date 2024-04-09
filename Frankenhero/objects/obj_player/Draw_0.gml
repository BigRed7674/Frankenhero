//Draw Player
draw_self();

if room_get_name(room) != "rm_init" {

	//draw HP as number
	draw_text(x, y, string(hp));
}

// first level
if room_get_name(room) == "rm_init"
|| room_get_name(room) == "rm_sheep"
{
	//Draw the Flashlight
	draw_flashlight()
	/* aim_dir >= 180 && aim_dir <= 360 {
		draw_flashlight(); //This code is in custom_scripts
	}

	//draw flashlight behind player
	if aim_dir >= 0 && aim_dir < 180 {
		draw_flashlight();
	}*/
}

// second level
if room_get_name(room) == "rm_test" {
	//Draw the Ally Sheep
	if !instance_exists( player_ally[0] )
	{
		player_ally[0] = instance_create_depth( x - 100 , y , depth + 1001 , obj_ally_sheep)
	}

}