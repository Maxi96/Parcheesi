/// @description hit target
// You can write your code in this editor

cross_speed = 0;

if((x < 950 and x > 875) or (x > 750 and x < 825)){
	take_shot((x-855)/8);
	show_debug_message("not a perfect shot!");
}else if( x <= 875 and x >= 825){
	take_shot(0);
	show_debug_message("perfect shot!");
}