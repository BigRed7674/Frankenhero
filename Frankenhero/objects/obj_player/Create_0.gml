//Movement variables
moveDir = 0;
moveSpeed = 2;
xspeed = 0;
yspeed= 0;

//Sprite Control
centerYOffset = -30;
centerY = y+centerYOffset;

aimDir = 0;



face = 3;
playerSprite[0] = spr_playerRight; //0 on xy Plane
playerSprite[1] = spr_playerUp; //90 on XY Plane
playerSprite[2] = spr_playerLeft; // 180 on XY Plane
playerSprite[3] = spr_playerDown; // 270 on XY Plane

// weapon info
shootTimer = 0

// add weapons to player weapon inventory
array_push( global.player_weapon_inventory , global.weapon_list.flashlight )
array_push( global.player_weapon_inventory , global.weapon_list.test )

selected_weapon = 0
weapon = global.player_weapon_inventory[selected_weapon]
