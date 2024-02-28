/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79DF85A9
/// @DnDArgument : "var" "global.dialogue_started"
/// @DnDArgument : "value" "false"
if(global.dialogue_started == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 56FFDBC5
	/// @DnDParent : 79DF85A9
	/// @DnDArgument : "soundid" "snd_baa_1"
	audio_play_sound(snd_baa_1, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1D810DBF
	/// @DnDParent : 79DF85A9
	/// @DnDArgument : "xpos" "240"
	/// @DnDArgument : "ypos" "240"
	/// @DnDArgument : "objectid" "obj_sheepdialoguebox"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "objectid" "obj_sheepdialoguebox"
	instance_create_layer(240, 240, "GUI", obj_sheepdialoguebox);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3F51EBCE
	/// @DnDParent : 79DF85A9
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.dialogue_started"
	global.dialogue_started = true;
}