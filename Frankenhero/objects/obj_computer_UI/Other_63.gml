var _i_d = ds_map_find_value(async_load, "id");
if _i_d == global.user_input{
 if ds_map_find_value(async_load, "status"){
 global.password = ds_map_find_value(async_load, "result");
 }
}