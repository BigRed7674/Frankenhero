// set case
if global.level1_complete == true
{
	global.dialogue_case = "lobby2"
}

// set up dialogue
dialogue_index = 0
current_dialogue = ds_list_create()
current_character = array_create(0)
sentence = "BAAAA"
sentence_count = 0

// UI
current_x = 0

/* characters
0 = Ethan
1 = Sheepa
2 = Dark Sheepa
3 = Honkster
*/

sprite_indexes = [ spr_dialogue_player, spr_dialogue_sheep ]

// Game Start


// Lobby 1
lobby1_character = [0,1,0,1,1,0]
dialogue_lobby1 = ds_list_create()
ds_list_add(dialogue_lobby1,
"What time is it?\nI can't sleep",
"It is almost midnight.\nLet's go back to sleep Ethan.",
"I can't sleep.\nI'm scared of the dark...",
"Sometimes the dark is scary,\nbut be brave.",
"Use your flashlight to face your fears.",
"I'll try to be brave!")


// Level 1 Death
/*level1_character = [2,0,0,0,0,2]
dialogue_level1 = ds_list_create()
ds_list_add(dialogue_level1,
"Aoaoao I am the Darkness \nAre you afraid of me?",
"Well not really", "You are just my imaginations",
"If I fear you, \nyou can be the creepy nighrmares.",
"But if I do not fear anymore, \n you can be my best friend sheepaa!",
"You are right Ethan. \n I am glad  \nyou are not afraid anymore")*/

// Lobby 2
lobby2_character = [0,1,0,1,0,1,0]
dialogue_lobby2 = ds_list_create()
ds_list_add(dialogue_lobby2,
"Oh hey Sheepa,\nturns out it's just you in my closet!",
"Ethan, were you afraid in the dark?",
"I always feel like something\nis hiding in the dark...",
"But you made it.\nAre you still afraid?",
"I guess you're right.\nI'm not afraid anymore!",
"Good job being brave,\nI knew you could do it Ethan!!",
"I'm ready for another adventure!!!")


// Select Dialogue
switch(global.dialogue_case)
{
	case "start":
	
	
	
	case "lobby1":
		ds_list_copy(current_dialogue, dialogue_lobby1);
		current_character = lobby1_character;
		break;

	case 2:
		ds_list_copy(current_dialogue, dialogue_level1);
		current_character = level1_character;
		break;

	case "lobby2":
		ds_list_copy(current_dialogue, dialogue_lobby2);
	
		current_character = lobby2_character;
		break;
}

dialogue_length = ds_list_size(current_dialogue);

// audio
current_sound = 0
gain = 0.2
switch(current_sound)
			{
				case 0:
					audio_play_sound(snd_baa_1, 0, 0, gain)
					break;
			
				case 1:
					audio_play_sound(snd_baa_2, 0, 0, gain)
					break;
			}