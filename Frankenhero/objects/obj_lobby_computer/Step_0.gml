if global.dialogue_complete { image_index = 1 }

if place_meeting(x, y+20, obj_player)
	&& global.level2_complete
	&& !global.dialogue_started
{
   sc_computer_ui()
}
else if instance_exists(obj_computer_ui)
{
	instance_destroy(obj_computer_ui)
	global.computer_on = false
}
