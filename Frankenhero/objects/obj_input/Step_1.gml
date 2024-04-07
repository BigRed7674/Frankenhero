global.rightkey = keyboard_check( ord("D") );
global.leftkey = keyboard_check(ord("A"));
global.upkey = keyboard_check(ord("W"));
global.downkey = keyboard_check(ord("S"));
global.shootkey = mouse_check_button( mb_left )

if (keyboard_check_pressed(vk_escape)) { // Check if the Escape key was pressed
	game_end(); // Quit the game
}







