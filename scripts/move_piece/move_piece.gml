/// move_piece(team,piece, move_value);
/// @description move the given piece, the given number of spaces
/// @param team the team id of the piece to move
/// @param piece the piece id of the piece to move
/// @param move_value the number of spaces to move the given piece

var team, piece, move_value;
team = argument0;
piece = argument1;
move_value = argument2;

pawn[team,piece].destination = count_forward(team, piece, move_value);
if(pawn[team,piece].is_in_nest)
{
	pawn[team,piece].is_in_nest = false;
	nest[team].occupants--;
}
