/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 521CE4E7
/// @DnDArgument : "var" "sheep_dialogue_index"
global.sheep_dialogue_index = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 01C5EB7D
/// @DnDArgument : "value" ""BAAAA""
/// @DnDArgument : "var" "global.sentence"
global.sentence = "BAAAA";

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 50AD8AC9
/// @DnDArgument : "value" "-80"
/// @DnDArgument : "var" "current_x"
global.current_x = -80;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 440BB982
/// @DnDArgument : "value" "[1,0,1,0,1,1,0,1,1,1,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,0]"
/// @DnDArgument : "var" "dialogue_lobby_1_character"
global.dialogue_lobby_1_character = [1,0,1,0,1,1,0,1,1,1,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,0];

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 4C519FC1
/// @DnDArgument : "var" "current_dialogue_list"
current_dialogue_list = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 607296B5
/// @DnDArgument : "var" "dialogue_lobby_1"
dialogue_lobby_1 = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 2DF0CDE0
/// @DnDInput : 26
/// @DnDArgument : "var" "dialogue_lobby_1"
/// @DnDArgument : "value" ""It is almost 10. Let’s go to bed Ethan!""
/// @DnDArgument : "value_1" ""But I want to wait for my mom and dad to come back.""
/// @DnDArgument : "value_2" ""Mom said they will be super late tonight, didn’t she? ""
/// @DnDArgument : "value_3" ""That’s true.""
/// @DnDArgument : "value_4" ""Ethan, I have promised mom we would go to bed on time. ""
/// @DnDArgument : "value_5" ""If you don’t get enough sleep, there’s no chance mom would let us go to the playgroud.""
/// @DnDArgument : "value_6" ""Yeah I wanna play with other kids so bad!""
/// @DnDArgument : "value_7" ""Then let’s sleepaaa.""
/// @DnDArgument : "value_8" ""I ll call my 99 sisters \nto see if they can do \na night shift with me""
/// @DnDArgument : "value_9" ""It is not that I am not sleepy, but…""
/// @DnDArgument : "value_10" ""Can we keep the light on? ""
/// @DnDArgument : "value_11" ""Ethan, are you afraid of darkness? ""
/// @DnDArgument : "value_12" ""yeaaaaa ""
/// @DnDArgument : "value_13" ""...""
/// @DnDArgument : "value_14" ""...""
/// @DnDArgument : "value_15" ""Yes.""
/// @DnDArgument : "value_16" ""]I always feel there’s something hiding in the darkness.""
/// @DnDArgument : "value_17" ""Baaaaa I see! ""
/// @DnDArgument : "value_18" ""Thank you for being honest with me! ""
/// @DnDArgument : "value_19" ""Why don’t you play a game with me? ""
/// @DnDArgument : "value_20" ""I promise afterwards you will not fear darkness""
/// @DnDArgument : "value_21" ""Take this flashlight! Though with limited battery, it should be enough for you! ""
/// @DnDArgument : "value_22" ""Remember if anything is going towards you just press spacebar to jump up! ""
/// @DnDArgument : "value_23" ""Find the switch and turn it on! ""
/// @DnDArgument : "value_24" ""Promise you will be brave Ethan! ""
/// @DnDArgument : "value_25" ""I promise!""
ds_list_add(dialogue_lobby_1, "It is almost 10. Let’s go to bed Ethan!", "But I want to wait for my mom and dad to come back.", "Mom said they will be super late tonight, didn’t she? ", "That’s true.", "Ethan, I have promised mom we would go to bed on time. ", "If you don’t get enough sleep, there’s no chance mom would let us go to the playgroud.", "Yeah I wanna play with other kids so bad!", "Then let’s sleepaaa.", "I ll call my 99 sisters \nto see if they can do \na night shift with me", "It is not that I am not sleepy, but…", "Can we keep the light on? ", "Ethan, are you afraid of darkness? ", "yeaaaaa ", "...", "...", "Yes.", "]I always feel there’s something hiding in the darkness.", "Baaaaa I see! ", "Thank you for being honest with me! ", "Why don’t you play a game with me? ", "I promise afterwards you will not fear darkness", "Take this flashlight! Though with limited battery, it should be enough for you! ", "Remember if anything is going towards you just press spacebar to jump up! ", "Find the switch and turn it on! ", "Promise you will be brave Ethan! ", "I promise!");

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0A76A200
/// @DnDArgument : "value" "[2,0,0,0,0,2]"
/// @DnDArgument : "var" "dialogue_level1_1_character"
global.dialogue_level1_1_character = [2,0,0,0,0,2];

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 5BB11034
/// @DnDArgument : "var" "dialogue_level1_1"
dialogue_level1_1 = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 4C723126
/// @DnDInput : 6
/// @DnDArgument : "var" "dialogue_level1_1"
/// @DnDArgument : "value" ""Aoaoao I am the Darkness \nAre you afraid of me?""
/// @DnDArgument : "value_1" ""Well not really""
/// @DnDArgument : "value_2" ""You are just my imaginations""
/// @DnDArgument : "value_3" ""If I fear you, \nyou can be the creepy nighrmares.""
/// @DnDArgument : "value_4" ""But if I do not fear anymore, \n you can be my best friend sheepaa!""
/// @DnDArgument : "value_5" ""You are right Ethan. \n I am glad  \nyou are not afraid anymore""
ds_list_add(dialogue_level1_1, "Aoaoao I am the Darkness \nAre you afraid of me?", "Well not really", "You are just my imaginations", "If I fear you, \nyou can be the creepy nighrmares.", "But if I do not fear anymore, \n you can be my best friend sheepaa!", "You are right Ethan. \n I am glad  \nyou are not afraid anymore");

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 764EADDA
/// @DnDArgument : "value" "[1,1,1,0,1]"
/// @DnDArgument : "var" "dialogue_lobby_2_character"
global.dialogue_lobby_2_character = [1,1,1,0,1];

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 43C6B600
/// @DnDArgument : "var" "dialogue_lobby_2"
dialogue_lobby_2 = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 6D0B60D7
/// @DnDInput : 5
/// @DnDArgument : "var" "dialogue_lobby_2"
/// @DnDArgument : "value" ""now you understand Ethan, \neverything remains the same  \nin darkness,""
/// @DnDArgument : "value_1" ""what you feared is  \ntheir reflection \nof your imagination.""
/// @DnDArgument : "value_2" ""However, they are not real \nand will not hurt you. ""
/// @DnDArgument : "value_3" ""hhhhh just turn off the light Sheepbaa \nI am so sleepy now, \nI want to sleep! ""
/// @DnDArgument : "value_4" ""Goodnight Ethan!  \nAnd I don’t think I should \ncall my sisters to do hurdling in your mind,  \nBAAA""
ds_list_add(dialogue_lobby_2, "now you understand Ethan, \neverything remains the same  \nin darkness,", "what you feared is  \ntheir reflection \nof your imagination.", "However, they are not real \nand will not hurt you. ", "hhhhh just turn off the light Sheepbaa \nI am so sleepy now, \nI want to sleep! ", "Goodnight Ethan!  \nAnd I don’t think I should \ncall my sisters to do hurdling in your mind,  \nBAAA");

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 009B104C
/// @DnDArgument : "expr" "global.current_case"
var l009B104C_0 = global.current_case;
switch(l009B104C_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2F5E5CC0
	/// @DnDParent : 009B104C
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 754B7B86
		/// @DnDInput : 2
		/// @DnDParent : 2F5E5CC0
		/// @DnDArgument : "function" "ds_list_copy"
		/// @DnDArgument : "arg" "current_dialogue_list"
		/// @DnDArgument : "arg_1" "dialogue_lobby_1"
		ds_list_copy(current_dialogue_list, dialogue_lobby_1);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3BEF00CF
		/// @DnDParent : 2F5E5CC0
		/// @DnDArgument : "value" "global.dialogue_lobby_1_character"
		/// @DnDArgument : "var" "current_dialogue_character"
		global.current_dialogue_character = global.dialogue_lobby_1_character;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 506A61D8
	/// @DnDParent : 009B104C
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3623FE04
		/// @DnDInput : 2
		/// @DnDParent : 506A61D8
		/// @DnDArgument : "function" "ds_list_copy"
		/// @DnDArgument : "arg" "current_dialogue_list"
		/// @DnDArgument : "arg_1" "dialogue_level1_1"
		ds_list_copy(current_dialogue_list, dialogue_level1_1);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2E8BBAE1
		/// @DnDParent : 506A61D8
		/// @DnDArgument : "value" "global.dialogue_level1_1_character"
		/// @DnDArgument : "var" "current_dialogue_character"
		global.current_dialogue_character = global.dialogue_level1_1_character;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 41E36311
	/// @DnDParent : 009B104C
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 28CEE6AB
		/// @DnDInput : 2
		/// @DnDParent : 41E36311
		/// @DnDArgument : "function" "ds_list_copy"
		/// @DnDArgument : "arg" "current_dialogue_list"
		/// @DnDArgument : "arg_1" "dialogue_lobby_2"
		ds_list_copy(current_dialogue_list, dialogue_lobby_2);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0692AE84
		/// @DnDParent : 41E36311
		/// @DnDArgument : "value" "global.dialogue_lobby_2_character"
		/// @DnDArgument : "var" "current_dialogue_character"
		global.current_dialogue_character = global.dialogue_lobby_2_character;
		break;
}