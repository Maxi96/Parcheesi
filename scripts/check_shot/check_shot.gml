//arguments needed to calculate old and new position

var team, piece, move_value;
team = argument0;
piece = argument1;
move_value = argument2;


var old_space, new_space, battle_bar_x, battle_bar_y;
old_space = pawn[team,piece].destination;
new_space = count_forward(team, piece, move_value);
battle_bar_x = 855;
battle_bar_y = 350;

if(space_position[new_space].occupants == 1 and space_position[new_space].safe == false){

	intended_destination = new_space;
	shot_move_value = move_value;
	current_shooter = current_player;
	selected_shooter = selected_piece;

	if(space_position[new_space].occupantsTeam != current_player){
		
		cross_speed = 30 * (0.08 * move_value);
		cross = instance_create_layer(battle_bar_x - 140, battle_bar_y, "Instances", obj_cross);
		battle_bar = instance_create_layer(battle_bar_x, battle_bar_y, "Instances", obj_battle_bar);
		
		return false;
	}
	return true;
}
return true;

return true;