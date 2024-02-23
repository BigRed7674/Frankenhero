//draw flashlight behind player
if aimDir >= 0 && aimDir < 180 {
	draw_flashlight();
}

//Draw Player
draw_self();

//Draw the Flashlight
if aimDir >= 180 && aimDir <= 360 {
	draw_flashlight(); //This code is in custom_scripts
}


