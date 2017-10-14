/// destroy_all_move_buttons
/// @description destroy all move buttons.

var i;
for(i = 0; i < button_move_count; i++)
{
	instance_destroy(button_move[i]);
}
button_move_count = 0;
