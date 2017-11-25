/// can_piece_move(team, piece)
/// @description check to see if a piece (given its team id and piece id) can move
/// @param team the piece's team id number
/// @param piece the piece's id number
/// @return true if the given piece can move, otherwise false

var team, piece;
team = argument0;
piece = argument1;

//show_debug_message("can_piece_move(" + string(team) + "," + string(piece) + ")\n{");
//show_debug_message("\tcan_piece_move() SAYS: piece is in nest: " + string(pawn[team,piece].is_in_nest));
// assume that the piece can not move
var result;
result = false;

// if the piece is in the nest, and five was rolled, then that piece has an available move
if(pawn[team,piece].is_in_nest)
{
	
	show_debug_message("Start space: " + string(nest[team].start_space) + "Occupants at start space: " + string(space_position[nest[team].start_space].occupants));
	if(rolled_five())
	{
		result = true;
	}
}
// if the piece is not in the nest, then we have to check if the piece can
// advance by either the value of the first die or the second die
// if it can advance with either die, then the piece can move
else
{
	// check each die
	var d;
	for(d = 0; d < 2; d++)
	  if(die[d].value > 0 and can_piece_advance(team, piece, die[d].value)) result = true;
}

//show_debug_message("} -- can_piece_move(" + string(team) + "," + string(piece) + ") RETURNS " + string(result));

return result;
