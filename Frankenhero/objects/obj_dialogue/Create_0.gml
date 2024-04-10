// audio
current_sound = 0
gain = 0.2

// set up dialogue
dialogue_index = 0
current_dialogue = ds_list_create()
current_character = array_create(0)
sentence = "BAAAA"
sentence_count = 0

// UI
current_x = -80

/* characters
0 = Ethan
1 = Sheepa
2 = Dark Sheepa
3 = Honkster
*/

// Game Start

// Lobby 1
lobby1_character = [1,0,1,0,1,1,0,1,1,1,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,0]
dialogue_lobby1 = ds_list_create()
ds_list_add(dialogue_lobby1,
"It is almost 10. Let's go to bed Ethan!",
"But I want to wait for my mom and dad to come back.")/*,
"Mom said they will be super late tonight, didn't she?",
"That's true.",
"Ethan, I have promised mom we would go to bed on time.",
"If you don’t get enough sleep, there’s no chance mom would let us go to the playgroud.",
"Yeah I wanna play with other kids so bad!",
"Then let’s sleepaaa.",
"I'll call my 99 sisters \nto see if they can do \na night shift with me",
"It is not that I am not sleepy, but…",
"Can we keep the light on? ",
"Ethan, are you afraid of darkness? ",
"yeaaaaa ",
"...",
"...",
"Yes.",
"I always feel there's something hiding in the darkness.",
"Baaaaa I see!",
"Thank you for being honest with me!",
"Why don’t you play a game with me?",
"I promise afterwards you will not fear darkness",
"Take this flashlight! Though with limited battery, it should be enough for you!",
"Remember if anything is going towards you just press spacebar to jump up!",
"Find the switch and turn it on!",
"Promise you will be brave Ethan!",
"I promise!")*/


// Level 1 Death
level1_character = [2,0,0,0,0,2]
dialogue_level1 = ds_list_create()
ds_list_add(dialogue_level1,
"Aoaoao I am the Darkness \nAre you afraid of me?",
"Well not really", "You are just my imaginations",
"If I fear you, \nyou can be the creepy nighrmares.",
"But if I do not fear anymore, \n you can be my best friend sheepaa!",
"You are right Ethan. \n I am glad  \nyou are not afraid anymore")

// Lobby 2
lobby2_character = [0,1,0,1,0,1]
dialogue_lobby2 = ds_list_create()
ds_list_add(dialogue_lobby2,
"Oh hey Sheepa, turns out it's just you in my closet!",
"Ethan, were you afraid in the dark?",
"I always feel like something is hiding in the dark...",
"But are you still afraid?",
"I guess you're right. I'm not afraid anymore!",
"Good job being brave Ethan, I knew you could do it!!")


// Select Dialogue
var _state = global.current_case
switch(_state)
{
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