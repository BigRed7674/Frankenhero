// Inherit the parent event
event_inherited();

if room_get_name(room) == "rm_sheep"
{
	var _health_percent = hp / max_hp;
	var _hp_image = _health_percent*(sprite_get_number(spr_enemy_healthbar)-1);

	if _health_percent > 0
	{
		draw_sprite(spr_enemy_healthbar, _hp_image, x, y-sprite_height -1);
	}
}