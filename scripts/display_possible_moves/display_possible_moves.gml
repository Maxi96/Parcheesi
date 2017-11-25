/// display_possible_moves()
/// @description displays the given piece's possible moves, if any
/// @param team the given piece's team ID number
/// @param piece the given piece's ID number

var team, piece;
team = argument0;
piece = argument1;

//show_debug_message("display_possible_moves(" + string(team) + ", " + string(piece) + ")\n{");

instance_destroy(obj_move_n);

var move_possible, display_x, display_y;
move_possible = false;
display_x = 706;
display_y = 128;

if(pawn[team,piece].is_in_nest and rolled_five() and space_position[nest[team].start_space].occupants < 2)
{
	make_move_button(display_x,display_y, 0, 5);
}
else
{
	if(count_unused_dice() == 1)
	{
		var d;
		d = get_unused_die_value();
		if(can_piece_advance(team, piece, d))
		{
			make_move_button(display_x,display_y, 0, d);
			display_y += 66;
			move_possible = true;
		}
	}
	else
	{
		var d;
		d[0] = min(die[0].value, die[1].value);
		d[1] = max(die[0].value, die[1].value);

		var i;
		for(i = 0; i < 2; i++)
		{
			if(can_piece_advance(team,piece, d[i]))
			{
				make_move_button(display_x,display_y, i, d[i]);
				display_y += 66;
				move_possible = true;
			}
		}

		if(move_possible and can_piece_advance(team,piece, d[0]+d[1]))
		{
			make_move_button(display_x,display_y, i, d[0]+d[1]);
			display_y += 66;
		}
	}
}

//show_debug_message("}\n -- display_possible_moves(" + string(team) + ", " + string(piece) + ")");
