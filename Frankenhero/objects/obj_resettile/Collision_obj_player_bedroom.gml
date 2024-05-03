draw_set_colour($FFFFFFFF & $ffffff);
var _alpha =($FFFFFFFF >> 24);
draw_set_alpha(_alpha / $ff);

global.tv_frame = 0;

global.wardrobedoor_frame = 0;

global.computer_frame = 0;

with(obj_dialogue) instance_destroy();

with(obj_enter_ui) instance_destroy();

global.dialogue_started = false;