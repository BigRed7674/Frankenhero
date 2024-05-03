var _shootkey = global.shootkey;

//fade in
alpha += alpha_speed;
alpha = clamp(alpha,0,1);

//restart
if _shootkey && alpha >= 1
{
	game_restart();
}
