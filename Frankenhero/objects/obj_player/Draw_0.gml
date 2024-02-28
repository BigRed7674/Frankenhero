//draw flashlight behind player
if aim_dir >= 0 && aim_dir < 180 {
	draw_flashlight();
}

//Draw Player
draw_self();

//Draw the Flashlight
if aim_dir >= 180 && aim_dir <= 360 {
	draw_flashlight(); //This code is in custom_scripts
}


//draw HP as number
draw_text(x, y, string(hp));