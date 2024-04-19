if (place_meeting(x, y+20, obj_player)){
   image_index = 1;
   instance_create_layer(0,0,"GUI",obj_dialogue_drawing_enter);
   instance_create_layer(0,0,"GUI",obj_dialogue_children_drawing);
   }
else{
	image_index = 0;
	if (instance_exists(obj_dialogue_children_drawing))
		layer_destroy_instances("GUI");
}