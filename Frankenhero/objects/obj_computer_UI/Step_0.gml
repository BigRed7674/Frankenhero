/*	 show_debug_message(global.password);
	 if (global.password == "6"){
		image_index = 0;
		global.locked = false;
	}else{
		image_index=1;
	}*/
if global.shootkey
&& global.level2_complete
{
	room_goto(rm_credits)
}