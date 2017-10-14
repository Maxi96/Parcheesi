/// next_player()
/// @description changes the current player to the next player.
///              Usually used at the end of the current player's turn.

show_debug_message("next_player()\n{");

instance_destroy(obj_selection);

current_player++;
if(current_player > 3) current_player -= 4;	
good_dice = false;
instance_activate_object(button_roll);

show_debug_message("} -- next_player()");
