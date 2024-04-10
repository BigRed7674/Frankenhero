audio_stop_all();



if(dialogue_index >= dialogue_length)
{
	global.dialogue_started = false
	switch(global.dialogue_case)
	{
		case "lobby1":
			room_goto(rm_sheep)
			break;
	
		case "lobby2":
			layer_sequence_create("Sequences", 0, 0, seq_fade);
			room_goto(rm_credits)
			break;
	}
}

if(!(dialogue_index >= dialogue_length))
{
	sentence = ds_list_find_value(current_dialogue, dialogue_index);

	var _character = current_character[dialogue_index];
	switch(_character)
	{	
		// Ethan
		case 0:
			with(obj_dialogue) {
			sprite_index = spr_dialogue_player
			}
			break
		
		// Sheepa
		case 1:
			current_sound = irandom(1)
			switch(current_sound)
			{
				case 0:
					audio_play_sound(snd_baa_1, 0, 0, gain)
					break;
			
				case 1:
					audio_play_sound(snd_baa_2, 0, 0, gain)
					break;
			}
			with(obj_dialogue) {
			sprite_index = spr_dialogue_sheep
			}
			break
	
		// Dark Sheepa
		case 2:
			current_sound = irandom(1)
			break
	}

	dialogue_index += 1;
}