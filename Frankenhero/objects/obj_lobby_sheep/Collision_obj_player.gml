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
	/// @DnDArgument : "var" "global.dialogue_started"
	global.dialogue_started = true;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 10279C35
	/// @DnDParent : 45CDF479
	/// @DnDArgument : "soundid" "snd_baa_1"
	/// @DnDArgument : "gain" ".25"
	/// @DnDSaveInfo : "soundid" "snd_baa_1"
	audio_play_sound(snd_baa_1, 0, 0, .25, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58683FC9
	/// @DnDParent : 45CDF479
	/// @DnDArgument : "objectid" "obj_dialogue"
	/// @DnDSaveInfo : "objectid" "obj_dialogue"
	instance_create_layer(0, 0, "Instances", obj_dialogue);
}