/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 18B0C79D
/// @DnDDisabled : 1
/// @DnDArgument : "var" "current_room"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4A8BEFE5
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "current_room"
/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 5B737100
/// @DnDDisabled : 1
/// @DnDParent : 4A8BEFE5
/// @DnDArgument : "const" "rm_lobby"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75502CA1
/// @DnDDisabled : 1
/// @DnDParent : 5B737100
/// @DnDArgument : "var" "global.level1_complete"
/// @DnDArgument : "value" "true"
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4EC8CCBB
/// @DnDDisabled : 1
/// @DnDParent : 75502CA1
/// @DnDArgument : "value" ""lobby2""
/// @DnDArgument : "var" "dialogue_case"