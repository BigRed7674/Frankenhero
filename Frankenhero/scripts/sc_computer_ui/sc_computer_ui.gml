// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_computer_ui(){
	if(!computer_on){
		instance_create_layer( 0 , 0 , "GUI" , obj_computer_ui );
		computer_on = true;}
}