/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 43B11D5D
/// @DnDArgument : "room" "OriginalRoom_Lobby"
/// @DnDSaveInfo : "room" "OriginalRoom_Lobby"
room_goto(OriginalRoom_Lobby);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 246853F7
/// @DnDApplyTo : {obj_sheep}
/// @DnDArgument : "spriteind" "spr_sheep"
/// @DnDSaveInfo : "spriteind" "spr_sheep"
with(obj_sheep) {
sprite_index = spr_sheep;
image_index = 0;
}