shootkey = global.shootkey;

//fade in
alpha += alphaspeed;
alpha = clamp(alpha,0,1);

//restart
if shootkey && alpha >= 1
{
	game_restart();
	window_set_size(480,480);
	surface_resize(application_surface, 480, 480);
}







