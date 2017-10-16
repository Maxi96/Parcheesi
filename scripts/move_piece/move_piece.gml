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

// decrement old space occupant + 
space_position[old_space].occupants--;
// move piece to new space
pawn[team,piece].destination = new_space;
// increment new space occupant
 space_position[new_space].occupants++;
 space_position[new_space].occupantsTeam = current_player;
 
 


if(pawn[team,piece].is_in_nest)
{
	pawn[team,piece].is_in_nest = false;
	nest[team].occupants--;
}
