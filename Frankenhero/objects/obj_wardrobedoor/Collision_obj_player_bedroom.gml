/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3C27ED1F
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.wardrobedoor_frame"
global.wardrobedoor_frame = 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3641C5F7
/// @DnDArgument : "xpos" "240"
/// @DnDArgument : "ypos" "240"
/// @DnDArgument : "objectid" "obj_enterUI"
/// @DnDArgument : "layer" ""GUI""
/// @DnDSaveInfo : "objectid" "obj_enterUI"
instance_create_layer(240, 240, "GUI", obj_enter_ui);