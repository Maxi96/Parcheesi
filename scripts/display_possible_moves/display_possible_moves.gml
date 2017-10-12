/// display_possible_moves()
/// @description displays the given piece's possible moves, if any
/// @param team the given piece's team ID number
/// @param piece the given piece's ID number

var team, piece;
team = argument0;
piece = argument1;

show_debug_message("display_possible_moves(" + string(team) + ", " + string(piece) + ")\n{");

var d, move_possible, display_x, display_y;
d[0] = min(die_value[0],die_value[1]);
d[1] = max(die_value[0],die_value[1]);
move_possible = false;
display_x = 706;
display_y = 128;

var i;
for(i = 0; i < 2; i++)
{
	if(can_piece_advance(team,piece, d[i]))
	{
		show_debug_message("\tdisplay_possible_moves() SAYS piece can advance " + string(d[i]))
		show_debug_message("\tdisplay_possible_moves() SAYS (x,y) = (" + string(display_x) + "," + string(display_y) + ")");
		button_move[i] = instance_create_layer(display_x,display_y, "admin", obj_move_n);
		button_move[i].image_index = d[i] - 1;
		button_move[i].id_move_button = i;
		button_move_count++;
		display_y += 66;
		move_possible = true;
	}
}

if(move_possible and can_piece_advance(team,piece, d[0]+d[1]))
{
		button_move[i] = instance_create_layer(display_x,display_y, "admin", obj_move_n);
		button_move[i].image_index = d[0] + d[1] - 1;
		button_move[i].id_move_button = i;
		button_move_count++;
}

show_debug_message("}\n -- display_possible_moves(" + string(team) + ", " + string(piece) + ")");
