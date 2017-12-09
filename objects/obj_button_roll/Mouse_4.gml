/// @description Roll the dice.

audio_play_sound(dice_rolling_effect,1,false)

if(instance_exists(obj_cross) or instance_exists(obj_battle_bar)){
	instance_destroy(cross);
	instance_destroy(battle_bar);
}

//show_debug_message("EVENT - LeftPressed - obj_button_roll\n{");

//raise_current_player_to_top(); // a temporary fix
instance_deactivate_object(button_roll);
roll_dice();

if(not is_move_possible())
{
	forfeit_turn();
}

//show_debug_message("} -- EVENT - LeftPressed - obj_button_roll");
