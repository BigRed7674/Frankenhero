if global.dialogue_case == "lobby3"
|| global.level2_complete
{
	visible = true
	//mask_index = spr_children_drawing
}
if place_meeting(x, y, obj_player)
	&& !global.dialogue_started
	&& global.level1_complete
{
	image_index = 1;
	instance_create_layer(0,0,"GUI",obj_dialogue_drawing_enter);
	instance_create_layer(0,0,"GUI",obj_dialogue_drawing);
}
else{
	image_index = 0;
	if (instance_exists(obj_dialogue_drawing))
	{
		layer_destroy_instances("GUI")
	}
}