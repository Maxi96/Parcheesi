/// @description Insert description here
// You can write your code in this editor

obj_controler.victim_space = destination;
if(!is_in_arrow){
	switch(id_team){
	
		case 0:
		pawn[0,id_piece].destination = 112 + id_piece;
		pawn[0,id_piece].is_in_nest = true;
		nest[0].occupants++;
		break;
		case 1: 
		pawn[1,id_piece].destination = 116 + id_piece;
		pawn[1,id_piece].is_in_nest = true;
		nest[1].occupants++;
		break;
		case 2: 
		pawn[2,id_piece].destination = 120 + id_piece;
		pawn[2,id_piece].is_in_nest = true;
		nest[2].occupants++;
		break;
		case 3: 
		pawn[3,id_piece].destination = 124 + id_piece;
		pawn[3,id_piece].is_in_nest = true;
		nest[3].occupants++;
		break;
	}
}
