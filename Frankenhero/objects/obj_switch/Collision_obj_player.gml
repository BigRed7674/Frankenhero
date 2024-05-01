/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7E6AC089
/// @DnDArgument : "value" ""lobby2""
/// @DnDArgument : "var" "dialogue_case"
global.dialogue_case = "lobby2";

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4067061F
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "level1_complete"
global.level1_complete = true;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 24441686
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.level2_start"
global.level2_start = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3CC44D43
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.level2_complete"
global.level2_complete = false;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5BC387F7
/// @DnDArgument : "soundid" "snd_switch_1"
/// @DnDSaveInfo : "soundid" "snd_switch_1"
audio_play_sound(snd_switch_1, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CBBFD6F
/// @DnDArgument : "objectid" "obj_transition"
/// @DnDArgument : "layer" ""Transition""
/// @DnDSaveInfo : "objectid" "obj_transition"
instance_create_layer(0, 0, "Transition", obj_transition);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 095EC0FD
/// @DnDArgument : "room" "rm_lobby"
/// @DnDSaveInfo : "room" "rm_lobby"
room_goto(rm_lobby);