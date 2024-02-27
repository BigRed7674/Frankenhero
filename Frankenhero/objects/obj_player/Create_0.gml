//Movement variables
moveDir = 0;
moveSpeed = 2;
xspeed = 0;
yspeed= 0;

//Sprite Control
centerYOffset = -30;
centerY = y+centerYOffset;

weaponOffsetDist = 20;
aimDir = 0;



face = 3;
playerSprite[0] = spr_playerRight; //0 on xy Plane
playerSprite[1] = spr_playerUp; //90 on XY Plane
playerSprite[2] = spr_playerLeft; // 180 on XY Plane
playerSprite[3] = spr_playerDown; // 270 on XY Plane

// weapon info
shootTimer = 0

flashlight =
{
	sprite : spr_flashlight,
	length : sprite_get_bbox_right( spr_flashlight ) - sprite_get_xoffset( spr_flashlight ),
	bulletObj : obj_bullet,
	cooldown : 9
}

weapon = flashlight