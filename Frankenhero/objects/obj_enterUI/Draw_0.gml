/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 692AC7C6
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2DE224B2
/// @DnDArgument : "color" "$FF992751"
draw_set_colour($FF992751 & $ffffff);
var l2DE224B2_0=($FF992751 >> 24);
draw_set_alpha(l2DE224B2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 369B79F6
/// @DnDArgument : "x" "-200"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "150"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""Enter the room""
draw_text_transformed(x + -200, y + 150, string("Enter the room") + "", 2, 2, 0);