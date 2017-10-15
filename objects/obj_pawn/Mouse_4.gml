/// @description Select a piece.

show_debug_message("EVENT - LeftPressed - obj_pawn\n{");

if(does_piece_belong_to_player(id_team, current_player))
{
// IS NEST | ROLLED | SELECT  |   |
//  EMPTY  |  FIVE  | IN NEST | Y | comment
// --------+--------+---------+---+------------------------------
//    T    |    T   |    X    | T | impossible, no piece in nest
//    T    |    T   |    F    | T | choose any piece
//    T    |    F   |    X    | T | impossible, no piece in nest
//    T    |    F   |    F    | T | choose any piece
//    F    |    T   |    T    | T | must take a piece out of nest
//    F    |    T   |    F    | F | must take a piece out of nest
//    F    |    F   |    T    | F | can't take a piece out of nest
//    F    |    F   |    F    | T | can't take a piece out of nest

	if
	(
		not is_nest_empty(current_player) and
			(
				(rolled_five() and not is_in_nest) or
				(not rolled_five() and is_in_nest)
			)
	)
	{
		// TODO play negative sound
	}
	else
	{
		select_piece(id_piece);
		display_possible_moves(id_team, id_piece);
	}
}

show_debug_message("} -- EVENT - LeftPressed - obj_pawn");
