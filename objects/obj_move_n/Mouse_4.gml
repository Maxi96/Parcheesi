/// @description Click on move button

var move_value;
move_value = image_index + 1;

if(take_shot(current_player,selected_piece, move_value)){
	move_piece(current_player,selected_piece, move_value);
}
mark_die_used(move_value);
instance_destroy(obj_move_n);
if(is_move_possible())
	display_possible_moves(current_player,selected_piece);
else
	next_player();
