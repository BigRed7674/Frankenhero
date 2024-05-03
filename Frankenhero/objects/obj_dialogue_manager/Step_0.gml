/// @description Insert description here
// You can write your code in this editor

if global.dialogue_started
{
	if !instance_exists(dialogue)
	{
		dialogue = instance_create_layer(0, 0, "Game_Control", obj_dialogue)
		//global.dialogue_started = false
	}
}