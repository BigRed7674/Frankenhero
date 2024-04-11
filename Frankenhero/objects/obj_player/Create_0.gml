//Movement variables
move_dir = 0;
move_speed = 2;
x_speed = 0;
y_speed= 0;

//Sprite Control
y_center_offset = -30;
y_center = y + y_center_offset;

walking_count = 0;

aim_dir = 0;

max_hp = 20
hp = max_hp

invincible = 0
itime = 100

face = 3;
player_sprite[0] = spr_player_right; //0 on xy Plane
player_sprite[1] = spr_player_up; //90 on XY Plane
player_sprite[2] = spr_player_left; // 180 on XY Plane
player_sprite[3] = spr_player_down; // 270 on XY Plane

// weapon info
shoot_timer = 0

// add weapons to player weapon inventory
array_push( global.player_weapon_inventory , global.weapon_list.flashlight )
//array_push( global.player_weapon_inventory , global.weapon_list.sheep )


selected_weapon = 0
weapon = global.player_weapon_inventory[selected_weapon]



// sidekick
player_ally[0] = noone // going to be sheep
