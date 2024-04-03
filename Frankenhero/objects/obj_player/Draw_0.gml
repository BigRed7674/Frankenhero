
//Draw Player
draw_self();

if room_get_name(room) != "rm_init" {
	//Draw the Flashlight
	if aim_dir >= 180 && aim_dir <= 360 {
		draw_flashlight(); //This code is in custom_scripts
	}

	//draw flashlight behind player
	if aim_dir >= 0 && aim_dir < 180 {
		draw_flashlight();
	}

	//draw HP as number
	draw_text(x, y, string(hp));
}