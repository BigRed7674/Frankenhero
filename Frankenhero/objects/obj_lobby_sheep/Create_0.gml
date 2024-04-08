/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 63BD8D71
/// @DnDArgument : "font" "PixelFont"
/// @DnDSaveInfo : "font" "PixelFont"
draw_set_font(PixelFont);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 68BBDB6E
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.level1_complete"
global.level1_complete = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4FE91C5E
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "dialogue_started"
global.dialogue_started = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6455CED1
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "current_case"
global.current_case = 1;

/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 7117CA44
/// @DnDArgument : "var" "current_room"
current_room = room;