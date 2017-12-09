/// move_piece(team,piece, move_value);
/// @description move the given piece, the given number of spaces
/// @param team the team id of the piece to move
/// @param piece the piece id of the piece to move
/// @param move_value the number of spaces to move the given piece

var team, piece, move_value;
team = argument0;
piece = argument1;
move_value = argument2;

var old_space, new_space;
old_space = pawn[team,piece].destination;
new_space = count_forward(team, piece, move_value);
// decrement old space occupant  
space_position[old_space].occupants--;
pawn[team,piece].is_a_friend = false;
pawn[team,piece].has_a_friend = false;
space_position[old_space].blockade = false;

var i, j;
for(i = 0; i <= 3; i++){
	for(j = 0; j <= 3; j++){
		if(pawn[i,j].destination == pawn[team,piece].destination){	
			pawn[i,j].has_a_friend = false;
			pawn[i,j].is_a_friend = false;
		}
	}
}
show_debug_message("New Space occupants: " + string(space_position[new_space].occupants));
// move piece to new space
if(space_position[new_space].occupants > 0){
	pawn[team,piece].is_a_friend = true;
}

for(i = 0; i <= 3; i++){
	for(j = 0; j <= 3; j++){
		if(pawn[i,j].destination == new_space){
			pawn[i,j].has_a_friend = true;
			
			show_debug_message("Blockade team: " + string(team) + " i: " + string(i));
			if(i == team){
				space_position[new_space].blockade = true;
			}
		}
	}
}
pawn[team,piece].destination = new_space;
// increment new space occupant
 space_position[new_space].occupants++;
 
space_position[new_space].occupantsTeam = current_player;
 

if(pawn[team,piece].is_in_nest)
{
	pawn[team,piece].is_in_nest = false;
	nest[team].occupants--;
}
