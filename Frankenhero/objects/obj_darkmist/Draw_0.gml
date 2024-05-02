/// @description Insert description here
// You can write your code in this editor
var _xscale = 6
var _yscale = 6
if instance_exists( obj_player ) {
	x = obj_player.x
	y = obj_player.y - 25
}
draw_sprite_ext( spr_darkmist , image_index ,
		x , y , _xscale , _yscale , 0 , image_blend, image_alpha )