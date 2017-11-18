/// @description Insert description here
// You can write your code in this editor
show_debug_message("EVENT - LeftPressed - obj_button_roll\n{");

//raise_current_player_to_top(); // a temporary fix
instance_deactivate_object(button_roll);

die[1].image_index = 1;
die[1].value = die[1].image_index + 1;

show_debug_message("} -- EVENT - LeftPressed - obj_button_roll");
