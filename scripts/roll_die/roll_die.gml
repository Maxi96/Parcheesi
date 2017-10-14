/// roll_die(die_number)
/// @description roll a die.
/// @param die_number the number of the die to roll.

var die_number;
die_number = argument0;

die[die_number].image_index = irandom(5);
die[die_number].value = die[die_number].image_index + 1;
die[die_number].used = false;
