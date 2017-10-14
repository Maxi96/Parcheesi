/// make_move_button(display_x,display_y, index, value);
/// @param display_x
/// @param display_y
/// @param index
/// @param value

var display_x,display_y, index, value;
display_x = argument0;
display_y = argument1;
index = argument2;
value = argument3;

button_move[index] = instance_create_layer(display_x,display_y, "admin", obj_move_n);
button_move[index].image_index = value - 1;
button_move[index].id_move_button = index;
button_move_count++;
