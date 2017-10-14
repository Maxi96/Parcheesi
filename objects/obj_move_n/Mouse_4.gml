/// @description Click on move button

pawn[current_player,selected_piece].destination = count_forward(current_player, selected_piece, image_index + 1);

if(id_move_button == 2)
{
	instance_destroy(button_move[0]);
	instance_destroy(button_move[1]);
	instance_destroy();
	button_move_count -= 3;
	die[0].used = true;
	die[1].used = true;
}
else
{
	instance_destroy(button_move[2]);
	instance_destroy();
	button_move_count -= 2;
	if(die[0].value == image_index + 1)
		die[0].used = true;
	else
		die[1].used = true;
}

if(button_move_count < 1) next_player();
