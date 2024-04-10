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