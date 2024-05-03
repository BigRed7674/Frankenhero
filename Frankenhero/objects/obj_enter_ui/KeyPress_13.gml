room_goto(rm_lobby);
window_set_size(960,540);
surface_resize(application_surface, 960, 540);

draw_set_colour($FFFFFFFF & $ffffff);
var _alpha=($FFFFFFFF >> 24);
draw_set_alpha(_alpha / $ff);

draw_set_font(fnt_pixel);

instance_destroy();