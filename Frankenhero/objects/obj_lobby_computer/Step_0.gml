if (place_meeting(x, y+20, obj_player)){
   image_index = 1;
   sc_computer_ui();
   }
else{
	image_index = 2;
	instance_destroy(obj_computer_ui);
	computer_on = false;}
	