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

	intended_destination = new_space;
	shot_move_value = move_value;
	current_shooter = current_player;
	selected_shooter = selected_piece;

	if(space_position[new_space].occupantsTeam != current_player){
		
		bullet = instance_create_depth(40*dcos(pawn[team,piece].image_angle)+pawn[team,piece].x,-40*dsin(pawn[team,piece].image_angle)+pawn[team,piece].y, 0, obj_bullet);
		bullet.image_angle = pawn[team,piece].image_angle;
		bullet.direction = bullet.image_angle;
		bullet.speed = 5;
		show_debug_message("set Controler values");
		obj_controler.selected_team = team;
		obj_controler.selected_id = piece;
		obj_controler.target_space = new_space;
		return false;
	}
	return true;
}
return true;

return true;