/// @description Insert description here
// You can write your code in this editor

if(target_space >= 0 and victim_space >= 0){
	
	if(target_space == victim_space){
		//pawn[selected_team, selected_id].destination = target_space;
		move_piece(selected_team,selected_id, shot_move_value);
	}
	//show_debug_message("Controler: check if target_space(" + string(target_space) + ") == victim_space(" + string(victim_space) +")");
	selected_team = -1;
	selected_id = -1;
	target_space = -1;
	victim_space = -1;
}

