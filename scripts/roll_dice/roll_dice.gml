/// roll_dice()
/// @description roll both dice.

var i;
for(i = 0; i < 2; i++)
{
	roll_die(i);
}
good_dice = true;
if(die[0].value == die[1].value){
	rolled_double = true;
}