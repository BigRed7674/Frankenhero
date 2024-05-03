global.dialogue_case = "lobby2";

global.level1_complete = true;

global.level2_start = false;

global.level2_complete = false;

audio_play_sound(snd_switch_1, 0, 0);

instance_create_layer(0, 0, "Transition", obj_transition);

room_goto(rm_lobby);