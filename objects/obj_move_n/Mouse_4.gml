/// @description Click on move button

pawn[current_player,selected_piece].destination += image_index + 1;

if(id_move_button == 2)
{
	instance_destroy(button_move[0]);
	instance_destroy(button_move[1]);
	instance_destroy();
}
else
{
	instance_destroy(button_move[2]);
	instance_destroy();
}