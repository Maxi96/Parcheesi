/// @description make cross move
// You can write your code in this editor

if(x < 715){
	cross_direction = 1;
}
if(x > 995){
	cross_direction = -1;
}

x = x + cross_speed * cross_direction;