/// is_move_possible()
/// @description check to see if the current player has any possible moves.
/// @return true if the current player has a possible move, otherwise false

//show_debug_message("is_move_possible()\n{");

// assume the the current player has no possible moves
var result;
result = false;

// check each individual piece to see if it can move somewhere
// if at least one piece can move, the result will be changed to 'true'
var i;
for(i = 0; i < 4; i++)
{
	if(can_piece_move(current_player, i)) result = true;
}

//show_debug_message("} -- is_move_possible() RETURNS " + string(result));

return result;
