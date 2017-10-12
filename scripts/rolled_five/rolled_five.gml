/// rolled_five()
/// @description check to see if the player rolled a five (either on one die or the sum of both dice)
/// @return true if the player rolled five, otherwise false

show_debug_message("rolled_five()\n{");
var result;
result = die_value[0] == 5 or die_value[1] == 5 or die_value[0]+die_value[1] == 5;
show_debug_message("} -- rolled_five() RETURNS " + string(result));

return result
