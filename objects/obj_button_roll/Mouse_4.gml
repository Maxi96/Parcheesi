/// @description Roll the dice.

show_debug_message("EVENT - LeftPressed - obj_button_roll\n{");

raise_current_player_to_top(); // a temporary fix
instance_deactivate_object(button_roll);
roll_dice();

if(not is_move_possible())
{
	forfeit_turn();
}

show_debug_message("} -- EVENT - LeftPressed - obj_button_roll");
