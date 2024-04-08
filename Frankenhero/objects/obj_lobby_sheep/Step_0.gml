/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 18B0C79D
/// @DnDArgument : "var" "current_room"
current_room = room;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4A8BEFE5
/// @DnDArgument : "expr" "current_room"
var l4A8BEFE5_0 = current_room;
switch(l4A8BEFE5_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5B737100
	/// @DnDParent : 4A8BEFE5
	/// @DnDArgument : "const" "rm_lobby"
	case rm_lobby:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 492A1AFB
		/// @DnDParent : 5B737100
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.current_case"
		global.current_case = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75502CA1
		/// @DnDParent : 5B737100
		/// @DnDArgument : "var" "global.level1_complete"
		/// @DnDArgument : "value" "true"
		if(global.level1_complete == true)
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 4EC8CCBB
			/// @DnDParent : 75502CA1
			/// @DnDArgument : "value" "3"
			/// @DnDArgument : "var" "global.current_case"
			global.current_case = 3;
		}
		break;
}