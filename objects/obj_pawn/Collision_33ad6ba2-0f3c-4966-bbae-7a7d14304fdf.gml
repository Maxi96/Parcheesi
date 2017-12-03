/// @description Insert description here
// You can write your code in this editor

with(other) instance_destroy();
instance_destroy(cross);
instance_destroy(battle_bar);

obj_controler.victim_space = destination;
var i,j;
if(!is_in_arrow){
	switch(id_team){
	
		case 0:
		space_position[destination].occupants--;
		for(i = 0; i <= 3; i++){
			for(j = 0; j <= 3; j++){
				if(pawn[i,j].destination == pawn[id_team,id_piece].destination){
					pawn[i,j].has_a_friend = false;
					pawn[i,j].is_a_friend = false;
				}
			}
		}
		pawn[0,id_piece].destination = 112 + id_piece;
		pawn[0,id_piece].is_in_nest = true;
		nest[0].occupants++;
		break;
		case 1: 
		space_position[destination].occupants--;
		for(i = 0; i <= 3; i++){
			for(j = 0; j <= 3; j++){
				if(pawn[i,j].destination == pawn[id_team,id_piece].destination){
					pawn[i,j].has_a_friend = false;
					pawn[i,j].is_a_friend = false;
				}
			}
		}
		pawn[1,id_piece].destination = 116 + id_piece;
		pawn[1,id_piece].is_in_nest = true;
		nest[1].occupants++;
		break;
		case 2: 
		space_position[destination].occupants--;
		for(i = 0; i <= 3; i++){
			for(j = 0; j <= 3; j++){
				if(pawn[i,j].destination == pawn[id_team,id_piece].destination){
					pawn[i,j].has_a_friend = false;
					pawn[i,j].is_a_friend = false;
				}
			}
		}
		pawn[2,id_piece].destination = 120 + id_piece;
		pawn[2,id_piece].is_in_nest = true;
		nest[2].occupants++;
		break;
		case 3: 
		space_position[destination].occupants--;
		for(i = 0; i <= 3; i++){
			for(j = 0; j <= 3; j++){
				if(pawn[i,j].destination == pawn[id_team,id_piece].destination){
					pawn[i,j].has_a_friend = false;
					pawn[i,j].is_a_friend = false;
				}
			}
		}
		pawn[3,id_piece].destination = 124 + id_piece;
		pawn[3,id_piece].is_in_nest = true;
		nest[3].occupants++;
		break;
	}
}
