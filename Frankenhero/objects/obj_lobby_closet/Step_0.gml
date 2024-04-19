if (place_meeting(x, y+20, obj_player)){
   image_index = 1;
   instance_create_layer(0,0,"GUI",obj_dialogue_closet_enter);
   instance_create_layer(0,0,"GUI",obj_dialogue_closet);
   }
else{
	image_index = 0;
	if (instance_exists(obj_dialogue_closet))
		layer_destroy_instances("GUI");
}