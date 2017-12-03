
var add;
add = argument0;



heading = pawn[current_shooter,selected_shooter].image_angle;
bearing = point_direction(pawn[current_shooter,selected_shooter].x,pawn[current_shooter,selected_shooter].y,space_position[intended_destination].x,space_position[intended_destination].y) + add;
relative_bearing = ((((bearing - heading) mod 360) + 540) mod 360) - 180;  // see http://stackoverflow.com/a/25269402/994628

//turn to the target
while(abs(relative_bearing) > 1){
	// we will turn to the left or the right depending on our relative bearing
	if(relative_bearing > 0) heading += 1;
	else heading -= 1;
	heading = wrap(heading, 0, 360) // always keep our heading between 0 and 360 degrees
	pawn[current_shooter,selected_shooter].image_angle = heading;
	relative_bearing = ((((bearing - heading) mod 360) + 540) mod 360) - 180;
}

//show_debug_message("set Controler values");
obj_controler.selected_team = current_shooter;
obj_controler.selected_id = selected_shooter;
obj_controler.target_space = intended_destination;

//create bullet and shoot!
bullet = instance_create_depth(40*dcos(pawn[current_shooter,selected_shooter].image_angle)+pawn[current_shooter,selected_shooter].x,-40*dsin(pawn[current_shooter,selected_shooter].image_angle)+pawn[current_shooter,selected_shooter].y, 0, obj_bullet);
bullet.image_angle = pawn[current_shooter,selected_shooter].image_angle;
bullet.direction = bullet.image_angle;
audio_play_sound(tank_fire_effect,1,false);
bullet.speed = 7;
