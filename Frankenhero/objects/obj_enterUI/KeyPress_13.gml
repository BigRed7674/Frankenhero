room_goto(rm_init);
window_set_size(960,540);
surface_resize(application_surface, 960, 540);

draw_set_colour($FFFFFFFF & $ffffff);
var l381241D5_0=($FFFFFFFF >> 24);
draw_set_alpha(l381241D5_0 / $ff);

draw_set_font(PixelFont);

instance_destroy();