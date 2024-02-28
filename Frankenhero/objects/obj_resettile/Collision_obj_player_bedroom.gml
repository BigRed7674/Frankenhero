/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1718CC67
draw_set_colour($FFFFFFFF & $ffffff);
var l1718CC67_0=($FFFFFFFF >> 24);
draw_set_alpha(l1718CC67_0 / $ff);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5B980F3A
/// @DnDArgument : "var" "global.TV_frame"
global.TV_frame = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6AE36AD1
/// @DnDArgument : "var" "global.wardrobedoor_frame"
global.wardrobedoor_frame = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 10FA6258
/// @DnDArgument : "var" "global.computer_frame"
global.computer_frame = 0;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 08D0E852
/// @DnDApplyTo : {obj_sheepdialoguebox}
with(obj_sheepdialoguebox) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 52489390
/// @DnDApplyTo : {obj_enterUI}
with(obj_enterUI) instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6427C0C4
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.dialogue_started"
global.dialogue_started = false;