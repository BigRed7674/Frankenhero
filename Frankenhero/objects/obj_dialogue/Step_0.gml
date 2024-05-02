if mouse_check_button_released(mb_left)  {audio_stop_all();



if(dialogue_index >= dialogue_length)
{
	global.dialogue_started = false
	switch(global.dialogue_case)
	{			
		case "lobby1":
			global.dialogue_case = "lobby2"
			instance_destroy()
			break
	
		case "lobby2":
			instance_create_layer( 0 , 0 , "Transition" , obj_transition )
			//global.level2_complete = false;
			global.level2_start = true;
			global.dialogue_case="lobby3"
			instance_destroy()
			break
			
	    case "lobby3":
			global.dialogue_case = "lobby4"
			instance_create_layer( 0 , 0 , "Transition" , obj_transition )
			room_goto(rm_geese)
			break
			
		case "lobby4":
			instance_create_layer( 0 , 0 , "Transition" , obj_transition )
			room_goto(rm_credits)
			break
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
			sprite_index = spr_dialogue_bad_sheep
			break
		
		// Bad Goose
		case 3:
			current_sound = irandom(1)
			sprite_index = spr_dialogue_bad_goose
			break
		//Good Goose
		case 4:
			current_sound = irandom(1)
			sprite_index = spr_dialogue_good_goose
			break
	}

	dialogue_index += 1;
}}