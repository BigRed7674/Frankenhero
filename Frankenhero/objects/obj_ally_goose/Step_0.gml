// Inherit the parent event
event_inherited();

if state == "attacking"
{
	if timer % (shoot_time) == 1
		{
			var _bullet_ally = instance_create_depth( x + face*sprite_height/4 , y - sprite_height/4  ,
												depth - 9999 , obj_bullet_ally)
			_bullet_ally.state = "shoot"
		}
}