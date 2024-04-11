if (place_meeting(x, y+20, obj_player)){
   image_index = 1;
   sc_computerUI();
   }
else{
	image_index = 2;
	instance_destroy(obj_computer_UI);
	computer_on = false;}
	