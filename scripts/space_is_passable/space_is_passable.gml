/// space_is_passable(space_number)
/// @description check to see if a given space number is passable (ie does not containg a blockade)
/// @param space_number the number of the space the check
/// @return true if a piece can legally pass the given space

var space_number;
space_number = argument0;

//show_debug_message("space_is_passable(" + string(space_number) + ")\n{");

var result;
result = !space_position[space_number].blockade;
//show_debug_message("Space " + string(space_number)+" Result: " + string(result));
//show_debug_message("} -- space_is_passable(" + string(space_number) + ") RETURNS " + string(result));

return result;
