audio_stop_all();


if(dialogue_index >= dialogue_length)
{
	instance_destroy();

	var _state = global.current_case;
	switch(_state)
	{
		case "lobby1":
			room_goto(rm_sheep);
			break;
	
		case 2:
			with(obj_lobby_sheep) {
			sprite_index = spr_sheep_bedroom;
			image_index = 0;
			}
		
			with(obj_player) {
			x = 400;
			}
		
			with(obj_player) {
			y = 240;
			}
		
		
			global.level1_complete = true;
			break;
	
		case "lobby2":
			layer_sequence_create("Fade", 240, 240, seq_fade);
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
			current_x = -220
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
			current_x = -80
			break
	
		// Dark Sheepa
		case 2:
			current_sound = irandom(1)
			break
	}

	dialogue_index += 1;
}