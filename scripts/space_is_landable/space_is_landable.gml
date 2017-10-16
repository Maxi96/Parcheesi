/// space_is_landable(space_number)
/// @description check to see if a piece can legally land on a given space
/// @param space_number the index number of the space to check
/// @return true if a piece can legally land on the given space, otherwise false
// TODO finish logic

var space_number;
space_number = argument0;

show_debug_message("space_is_landable(" + string(space_number) + ")\n{");

// assume that the space is landable
var result;
result = true;

// if the space contains a blockade, then it is not landable
if(space_position[space_number].blockade) result = false;
// if the space already contains 2 pieces, then it is not landable
if(space_position[space_number].occupants >= 2) result = false;
 
show_debug_message("} -- space_is_landable(" + string(space_number) + ") RETURNS " + string(result));

return result;
