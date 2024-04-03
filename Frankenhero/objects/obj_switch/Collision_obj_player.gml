/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4FC33B50
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.dialogue_started"
global.dialogue_started = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 46106051
/// @DnDArgument : "value" "global.dialogue_started"
global.variable = global.dialogue_started;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7E6AC089
/// @DnDArgument : "value" "3"
/// @DnDArgument : "var" "global.current_case"
global.current_case = 3;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4067061F
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "global.level1_complete"
global.level1_complete = true;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 095EC0FD
/// @DnDArgument : "room" "rm_init"
/// @DnDSaveInfo : "room" "rm_init"
room_goto(rm_init);