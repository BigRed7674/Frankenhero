// set case
if global.level1_complete == true
{
	global.dialogue_case = "lobby2"
	if global.level2_start == true{
		global.dialogue_case = "lobby3"
		if global.level2_complete == true{
			global.dialogue_case = "lobby4"
		}
	}
}

// set up dialogue
dialogue_index = 0
current_dialogue = ds_list_create()
current_character = array_create(0)
sentence = "BAAAA"
sentence_count = 0

/* characters
0 = Ethan
1 = Sheepa
2 = Dark Sheepa
3 = Honkster
*/

sprite_indexes = [ spr_dialogue_player, spr_dialogue_sheep, spr_dialogue_bad_sheep,spr_dialogue_bad_goose, spr_dialogue_good_goose ]

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
lobby2_character = [2,0,1,0,0,0,1,0]
dialogue_lobby2 = ds_list_create()
ds_list_add(dialogue_lobby2,
"Awwww I am the darkness!",
"Oh Sheepa\nit's just you in my closet!",
"Ethan, you are right, it is just me!",
"I always feel like something\nis hiding in the dark.",
"But now I realized that these\n are all my imaginations",
"I'm not afraid anymore!",
"Good job being brave,\nI knew you could do it Ethan!!",
"I'm ready for another adventure!!!")

// Lobby 3
lobby3_character = [0,1,0,3,1,1,1,4]
dialogue_lobby3 = ds_list_create()
ds_list_add(dialogue_lobby3,
"Sheepa, I don't know if I can deal\n with the next thing in my diary.",
"What's the matter, Ethan?",
"Am I too short? Too ugly? Too weird?",
"Yes!You are!",
"That is mean!",
"Listen Ethan, Sometimes kids are mean,\n but we can always find good friends.",
"For example...Honkster!",
"Come back to the playground and find me!")

// Lobby 4
lobby4_character = [1,0,1,0,0,4,1,0]
dialogue_lobby4 = ds_list_create()
ds_list_add(dialogue_lobby4,
"Welcome back Ethan!",
"That was really a wild goose chase!",
"But you did find somebody, didn't you?",
"Yes!",
"This is my new friend, Honkster!\nHonkster, this is Sheepa!",
"Nice to meet you Sheepa,\nyou look so puffy!",
"Thank you Honkster,\nyour feathers look so adorable!",
"Great, I have two best friends now!!")

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
		
	case "lobby3":
		ds_list_copy(current_dialogue, dialogue_lobby3);
	
		current_character = lobby3_character;
		break;
		
	case "lobby4":
		ds_list_copy(current_dialogue, dialogue_lobby4);
	
		current_character = lobby4_character;
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