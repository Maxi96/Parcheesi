/// @description Click on move button

pawn[current_player,selected_piece].destination += image_index + 1;

if(id_move_button == 2)
{
	instance_destroy(button_move[0]);
	button_move_count--;
	instance_destroy(button_move[1]);
	button_move_count--;
	instance_destroy();
	button_move_count--;
}
else
{
	instance_destroy(button_move[2]);
	button_move_count--;
	instance_destroy();
	button_move_count--;
}

if(button_move_count < 1) next_player();
