/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45CDF479
/// @DnDArgument : "var" "global.dialogue_started"
/// @DnDArgument : "value" "false"
if(global.dialogue_started == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11E07037
	/// @DnDParent : 45CDF479
	/// @DnDArgument : "var" "global.dialogue_case"
	/// @DnDArgument : "value" ""lobby1""
	if(global.dialogue_case == "lobby1")
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 17CEBADA
		/// @DnDParent : 11E07037
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "dialogue_started"
		global.dialogue_started = true;
	}
}