/// mark_die_used(die_value);
/// @description find the unused die (or dice) of the given value and mark it (or them) as used.
/// @param die_value the value of the die (or dice) to mark

var die_value;
die_value = argument0;

if(die[0].value == die_value)
	die[0].value = 0;
else if(die[1].value == die_value)
	die[1].value = 0;
else
{
	die[0].value = 0;
	die[1].value = 0;
}
