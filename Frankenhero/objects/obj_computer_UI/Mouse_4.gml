if (!global.locked)&&(point_in_rectangle(mouse_x, mouse_y,x+134, y+162,x+157,y+190)) {
	room_goto(rm_sheep);
}else if (!global.locked)&&(point_in_rectangle(mouse_x, mouse_y,x+134, y+208,x+157,y+234)) {
	room_goto(rm_geese);
}else if (global.locked)&&(point_in_rectangle(mouse_x, mouse_y,x+185, y+228,x+271,y+239)) {
	 global.user_input = get_string_async("how many geese in the team:", "");
	}
