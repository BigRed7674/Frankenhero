//if mouse_check_button_pressed(mb_left)  
//{audio_stop_all();
//if (point_in_rectangle(mouse_x, mouse_y,x+530,y+300,x+580,y+400)) {
//	room_goto(rm_sheep);
//}//}



if global.shootkey {
	instance_create_layer( 0 , 0 , "Transition" , obj_transition )
	room_goto(rm_geese)
}