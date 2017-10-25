//arguments needed to calculate old and new position

var team, piece, move_value;
team = argument0;
piece = argument1;
move_value = argument2;

var old_space, new_space;
old_space = pawn[team,piece].destination;
new_space = count_forward(team, piece, move_value);

heading = pawn[team,piece].image_angle;
bearing = point_direction(pawn[team,piece].x,pawn[team,piece].y,space_position[new_space].x,space_position[new_space].y);
relative_bearing = ((((bearing - heading) mod 360) + 540) mod 360) - 180;  // see http://stackoverflow.com/a/25269402/994628


if(space_position[new_space].occupants == 1 and space_position[new_space].safe == false){
	
	while(abs(relative_bearing) > 1){
		// we will turn to the left or the right depending on our relative bearing
		if(relative_bearing > 0) heading += 1;
		else heading -= 1;
		heading = wrap(heading, 0, 360) // always keep our heading between 0 and 360 degrees
		pawn[team,piece].image_angle = heading;
		relative_bearing = ((((bearing - heading) mod 360) + 540) mod 360) - 180;
	}
	
	if(space_position[new_space].occupantsTeam != current_player){
		
	
		if((old_space >= 0 and old_space <= 7) or (old_space >= 25 and old_space <= 32) or old_space == 16){
			bullet = instance_create_depth(pawn[team,piece].x,pawn[team,piece].y-20,0,obj_bullet);
			bullet.direction = pawn[team,piece].image_angle;
			bullet.image_angle = pawn[team,piece].image_angle;
			bullet.speed = 20;
		}else if((old_space >= 34 and old_space <= 41) or (old_space >= 59 and old_space <= 66) or old_space == 50){
			bullet = instance_create_depth(pawn[team,piece].x,pawn[team,piece].y+20,0,obj_bullet);
			bullet.direction = pawn[team,piece].image_angle;
			bullet.image_angle = pawn[team,piece].image_angle;
			bullet.speed = 20;
		}
		else if((old_space >= 8 and old_space <= 15) or (old_space >= 51 and old_space <= 58) or old_space == 67){
			bullet = instance_create_depth(pawn[team,piece].x+20,pawn[team,piece].y,0,obj_bullet);
			bullet.direction = pawn[team,piece].image_angle;
			bullet.image_angle = pawn[team,piece].image_angle;
			bullet.speed = 20;
		}
		else if((old_space >= 17 and old_space <= 24) or (old_space >= 42 and old_space <= 49) or old_space == 90){
			bullet = instance_create_depth(pawn[team,piece].x-20,pawn[team,piece].y-20,0,obj_bullet);
			bullet.direction = pawn[team,piece].image_angle;
			bullet.image_angle = pawn[team,piece].image_angle;
			bullet.speed = 20;
		}
		
		/*
		if((space_position[old_space] >= 0 and space_position[old_space] <= 7) or space_position[old_space] == 16){
			gegenka = 20 *cos(image_angle);
			bullet = instance_create_depth(pawn[team,piece].x+ gegenka,pawn[team,piece].y-20,0,obj_bullet);
		}else if(space_position[old_space] >= 17 and space_position[old_space] <= 24){
			gegenka = 20*cos(image_angle-90);
			bullet = instance_create_depth(pawn[team,piece].x-20,pawn[team,piece].y+gegenka,0,obj_bullet);
		}else if((space_position[old_space] >= 34 and space_position[old_space] <= 41)or space_position[old_space] == 50){
			gegenka = 20*cos(image_angle-180);
			bullet = instance_create_depth(pawn[team,piece].x-gegenka,pawn[team,piece].y+20,0,obj_bullet);
		}else if(space_position[old_space] >= 59 and space_position[old_space] <= 66){
			
		}else if((space_position[old_space] >= 8 and space_position[old_space] <= 15) or space_position[old_space] == 67){
			
		}else if(space_position[old_space] >= 51 and space_position[old_space] <= 58){
			gegenka = 20*cos(image_angle+90);
			bullet = instance_create_depth(pawn[team,piece].x+20,pawn[team,piece].y+gegenka,0,obj_bullet);
		}else if((space_position[old_space] >= 17 and space_position[old_space] <= 24) or (space_position[old_space] >= 42 and space_position[old_space] <= 49) or space_position[old_space] == 90){
		
		}
		*/
	}
}