/// @description Select a piece.

show_debug_message("EVENT - LeftPressed - obj_pawn\n{");

if(does_piece_belong_to_player(id_team, current_player))
{
	select_piece(id_piece);
	destroy_all_move_buttons();
	display_possible_moves(id_team, id_piece);
}
else
{
	// TODO play a negative sound
}

show_debug_message("} -- EVENT - LeftPressed - obj_pawn");
