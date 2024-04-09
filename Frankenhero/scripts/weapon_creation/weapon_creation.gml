// constructor template for weapons
function CreateWeapon( _sprite , _length , _offset_distance, _bullet_object , _cooldown , _bullet_num , _spread ) constructor
{
	sprite = _sprite
	length = _length
	offset_distance = _offset_distance
	bullet_object = _bullet_object
	cooldown = _cooldown
	bullet_num = _bullet_num
	spread = _spread
}

// player weapon inventory
global.player_weapon_inventory = array_create(0)



// weapons
global.weapon_list =
{
	flashlight : new CreateWeapon( spr_flashlight ,
	sprite_get_bbox_right( spr_flashlight ) * 2, 20,
	obj_bullet_flashlight, 1 , 5 , 45 ),
	
	sheep : new CreateWeapon( spr_ally_sheep_move ,
	sprite_get_bbox_right( spr_ally_sheep_move ) - sprite_get_xoffset( spr_ally_sheep_move ), 10,
	spr_ally_sheep_move, 20 , 1 , 0 )
}
