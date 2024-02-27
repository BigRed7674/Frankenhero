//Movement variables
moveDir = 0;
moveSpeed = 2;
xspeed = 0;
yspeed= 0;

//Sprite Control
centerYOffset = -3;
centerY = y+centerYOffset;

weaponOffsetDist = 20;
aimDir = 0;



face = 3;
sprite[0] = spr_playerRight; //0 on xy Plane
sprite[1] = spr_playerUp; //90 on XY Plane
sprite[2] = spr_playerLeft; // 180 on XY Plane
sprite[3] = spr_playerDown; // 270 on XY Plane

// weapon info
shootTimer = 0
shootCooldown = 9

bulletObj = obj_bullet
weaponLength = sprite_get_bbox_right( spr_flashlight ) - sprite_get_xoffset( spr_flashlight )
