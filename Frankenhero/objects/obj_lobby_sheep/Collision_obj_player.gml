/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45CDF479
/// @DnDArgument : "var" "global.dialogue_started"
/// @DnDArgument : "value" "false"
if(global.dialogue_started == false)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 17CEBADA
	/// @DnDParent : 45CDF479
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "dialogue_started"
	global.dialogue_started = true;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 10279C35
	/// @DnDDisabled : 1
	/// @DnDParent : 45CDF479
	/// @DnDArgument : "soundid" "snd_baa_1"
	/// @DnDArgument : "gain" ".25"
	/// @DnDSaveInfo : "soundid" "snd_baa_1"


	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58683FC9
	/// @DnDDisabled : 1
	/// @DnDParent : 45CDF479
	/// @DnDArgument : "objectid" "obj_dialogue"
	/// @DnDSaveInfo : "objectid" "obj_dialogue"
}