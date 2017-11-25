/// @description Select a piece.

//show_debug_message("EVENT - LeftPressed - obj_pawn\n{");

if(does_piece_belong_to_player(id_team, current_player) and good_dice)
{
// IS NEST | ROLLED | SELECT  |   |
//  EMPTY  |  FIVE  | IN NEST | Y | comment
// --------+--------+---------+---+------------------------------
//    T    |    T   |    X    | T | impossible, no piece in nest
//    T    |    T   |    F    | T | choose any piece
//    T    |    F   |    X    | T | impossible, no piece in nest
//    T    |    F   |    F    | T | choose any piece
//    F    |    T   |    T    | T | must take a piece out of nest
//    F    |    T   |    F    | F | must take a piece out of nest ==> not working
//    F    |    F   |    T    | F | can't take a piece out of nest
//    F    |    F   |    F    | T | can't take a piece out of nest

	if
	(
		not is_nest_empty(current_player) and
			(
				(rolled_five() and not pawn[current_player, id_piece].is_in_nest and space_position[nest[current_player].start_space].occupants < 2) or (not rolled_five() and pawn[current_player, id_piece].is_in_nest)
			)
	)
	{
		// TODO play negative sound
		//show_debug_message("current_player = " + string(current_player) + "\n pawn is in nest: " +  string(pawn[current_player, id_piece].is_in_nest) + "\n is nest empty: " + string(is_nest_empty(current_player)) + "\n current nest occupants: " + string(nest[current_player].occupants));
	}
	else
	{
		select_piece(id_piece);
		display_possible_moves(id_team, id_piece);
	}
}

//show_debug_message("} -- EVENT - LeftPressed - obj_pawn");
