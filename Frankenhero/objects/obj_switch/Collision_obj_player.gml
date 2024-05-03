global.level1_complete = true;

audio_play_sound(snd_switch_1, 0, 0);

instance_create_layer(0, 0, "Transition", obj_transition);

room_goto(rm_lobby);