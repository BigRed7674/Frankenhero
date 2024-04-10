/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 028C65E4
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 413CA4EB
/// @DnDArgument : "x" "current_x+400"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "900"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "3"
/// @DnDArgument : "yscale" "3"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "sentence"
draw_text_transformed(x + current_x+400, y + 900, "" + string(sentence), 3, 3, 0);