/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 3042AB9D
audio_stop_all();

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 0C69829B
/// @DnDArgument : "assignee" "sentence_count"
/// @DnDArgument : "var" "current_dialogue_list"
sentence_count = ds_list_size(current_dialogue_list);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7ECFA57B
/// @DnDArgument : "var" "global.sheep_dialogue_index"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "sentence_count"
if(global.sheep_dialogue_index >= sentence_count)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6FB1F29A
	/// @DnDParent : 7ECFA57B
	instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1110BE7C
	/// @DnDParent : 7ECFA57B
	/// @DnDArgument : "var" "current_room"
	current_room = room;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 433C46FC
	/// @DnDParent : 7ECFA57B
	/// @DnDArgument : "expr" "global.current_case"
	var l433C46FC_0 = global.current_case;
	switch(l433C46FC_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6655F278
		/// @DnDParent : 433C46FC
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 14E8E4FD
			/// @DnDParent : 6655F278
			/// @DnDArgument : "room" "Room1"
			/// @DnDSaveInfo : "room" "Room1"
			room_goto(Room1);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7D0299B3
		/// @DnDParent : 433C46FC
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7FB3C1C2
			/// @DnDApplyTo : {obj_sheep}
			/// @DnDParent : 7D0299B3
			/// @DnDArgument : "spriteind" "spr_sheep"
			/// @DnDSaveInfo : "spriteind" "spr_sheep"
			with(obj_sheep) {
			sprite_index = spr_sheep;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 60099226
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 7D0299B3
			/// @DnDArgument : "value" "400"
			with(obj_player) {
			x = 400;
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7AA555E8
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 7D0299B3
			/// @DnDArgument : "value" "240"
			/// @DnDArgument : "instvar" "1"
			with(obj_player) {
			y = 240;
			}
		
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 3DCD0DEA
			/// @DnDParent : 7D0299B3
			/// @DnDArgument : "room" "OriginalRoom_Lobby"
			room_goto(OriginalRoom_Lobby);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 1197849D
			/// @DnDParent : 7D0299B3
			/// @DnDArgument : "value" "true"
			/// @DnDArgument : "var" "global.level1_complete"
			global.level1_complete = true;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5904233D
		/// @DnDParent : 433C46FC
		/// @DnDArgument : "const" "3"
		case 3:
			/// @DnDAction : YoYo Games.Sequences.Sequence_Create
			/// @DnDVersion : 1
			/// @DnDHash : 6386F404
			/// @DnDParent : 5904233D
			/// @DnDArgument : "xpos" "240"
			/// @DnDArgument : "ypos" "240"
			/// @DnDArgument : "sequenceid" "seq_fade"
			/// @DnDArgument : "layer" ""Sequence""
			/// @DnDSaveInfo : "sequenceid" "seq_fade"
			variable = layer_sequence_create("Sequence", 240, 240, seq_fade);
			break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52360AE5
/// @DnDArgument : "var" "global.sheep_dialogue_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "sentence_count"
if(!(global.sheep_dialogue_index >= sentence_count))
{
	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 11491048
	/// @DnDParent : 52360AE5
	/// @DnDArgument : "assignee" "global.sentence"
	/// @DnDArgument : "var" "current_dialogue_list"
	/// @DnDArgument : "index" "global.sheep_dialogue_index"
	global.sentence = ds_list_find_value(current_dialogue_list, global.sheep_dialogue_index);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 6F50864C
	/// @DnDParent : 52360AE5
	/// @DnDArgument : "expr" "global.current_dialogue_character[global.sheep_dialogue_index]"
	var l6F50864C_0 = global.current_dialogue_character[global.sheep_dialogue_index];
	switch(l6F50864C_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 267A9241
		/// @DnDParent : 6F50864C
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0861F2BD
			/// @DnDParent : 267A9241
			/// @DnDArgument : "var" "current_sound"
			/// @DnDArgument : "type" "1"
			current_sound = floor(random_range(0, 1 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 00B0F9C3
			/// @DnDParent : 267A9241
			/// @DnDArgument : "expr" "current_sound"
			var l00B0F9C3_0 = current_sound;
			switch(l00B0F9C3_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 310939FF
				/// @DnDParent : 00B0F9C3
				case 0:
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 298D66E8
					/// @DnDParent : 310939FF
					/// @DnDArgument : "soundid" "snd_baa_1"
					/// @DnDSaveInfo : "soundid" "snd_baa_1"
					audio_play_sound(snd_baa_1, 0, 0, 1.0, undefined, 1.0);
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 4FCFE569
				/// @DnDParent : 00B0F9C3
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 73BFBE73
					/// @DnDParent : 4FCFE569
					/// @DnDArgument : "soundid" "snd_baa_2"
					/// @DnDSaveInfo : "soundid" "snd_baa_2"
					audio_play_sound(snd_baa_2, 0, 0, 1.0, undefined, 1.0);
					break;
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3EBA638D
			/// @DnDApplyTo : {obj_sheepdialoguebox}
			/// @DnDParent : 267A9241
			/// @DnDArgument : "spriteind" "spr_sheepdialoguebox"
			/// @DnDSaveInfo : "spriteind" "spr_sheepdialoguebox"
			with(obj_sheepdialoguebox) {
			sprite_index = spr_sheepdialoguebox;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 0BE87CBF
			/// @DnDParent : 267A9241
			/// @DnDArgument : "value" "-80"
			/// @DnDArgument : "var" "global.current_x"
			global.current_x = -80;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 49E62DA6
		/// @DnDParent : 6F50864C
		case 0:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1A463187
			/// @DnDApplyTo : {obj_sheepdialoguebox}
			/// @DnDParent : 49E62DA6
			/// @DnDArgument : "spriteind" "spr_EthanDialogue"
			/// @DnDSaveInfo : "spriteind" "spr_EthanDialogue"
			with(obj_sheepdialoguebox) {
			sprite_index = spr_EthanDialogue;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 18EF8A0C
			/// @DnDParent : 49E62DA6
			/// @DnDArgument : "value" "-220"
			/// @DnDArgument : "var" "global.current_x"
			global.current_x = -220;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 22DD1B70
		/// @DnDParent : 6F50864C
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 76E95C5E
			/// @DnDParent : 22DD1B70
			/// @DnDArgument : "var" "current_sound"
			/// @DnDArgument : "type" "1"
			current_sound = floor(random_range(0, 1 + 1));
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 08D0D5B0
			/// @DnDParent : 22DD1B70
			/// @DnDArgument : "expr" "current_sound"
			var l08D0D5B0_0 = current_sound;
			switch(l08D0D5B0_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 27C5E9E8
				/// @DnDParent : 08D0D5B0
				case 0:
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 07807F4F
					/// @DnDParent : 27C5E9E8
					/// @DnDArgument : "soundid" "snd_baa_1"
					/// @DnDSaveInfo : "soundid" "snd_baa_1"
					audio_play_sound(snd_baa_1, 0, 0, 1.0, undefined, 1.0);
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 739A34F2
				/// @DnDParent : 08D0D5B0
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 5EE6851D
					/// @DnDParent : 739A34F2
					/// @DnDArgument : "soundid" "snd_baa_2"
					/// @DnDSaveInfo : "soundid" "snd_baa_2"
					audio_play_sound(snd_baa_2, 0, 0, 1.0, undefined, 1.0);
					break;
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4B2CE55E
			/// @DnDApplyTo : {obj_sheepdialoguebox}
			/// @DnDParent : 22DD1B70
			/// @DnDArgument : "spriteind" "spr_blacksheepdialoguebox20"
			with(obj_sheepdialoguebox) {
			sprite_index = spr_blacksheepdialoguebox20;
			image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 167EA09F
			/// @DnDParent : 22DD1B70
			/// @DnDArgument : "value" "-80"
			/// @DnDArgument : "var" "global.current_x"
			global.current_x = -80;
			break;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B6E3F95
	/// @DnDParent : 52360AE5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.sheep_dialogue_index"
	global.sheep_dialogue_index += 1;
}