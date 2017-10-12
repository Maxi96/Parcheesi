/// @description Select a piece.

show_debug_message("EVENT - LeftPressed - obj_pawn\n{");


// if the selected piece's team id number matches the current player number,
// then we are ok to select this piece.
if(id_team == current_player)
{
	selected_piece = id_piece;
	instance_destroy(obj_selection);
	instance_create_layer(x,y, "Instances", obj_selection);
	
	show_debug_message("EVENT - LeftPressed - obj_pawn SAYS button_move_count = " + string(button_move_count));
	var i;
	for(i = 0; i < button_move_count; i++)
	{
		show_debug_message("EVENT - LeftPressed - obj_pawn SAYS destroying button_move[" + string(i) + "]");
		instance_destroy(button_move[i]);
	}
	button_move_count = 0;
	display_possible_moves(id_team, id_piece);
}
// if the selected piece belongs to another player, then regect the selection
else
{
	// TODO play a negative sound
}

show_debug_message("} -- EVENT - LeftPressed - obj_pawn");
