/// @description Roll the dice.

show_debug_message("EVENT - LeftPressed - obj_button_roll\n{");


instance_deactivate_object(button_roll);

var i;
for(i = 0; i < 2; i++)
{
	var roll;
	roll = irandom(5)
	die[i].image_index = roll;
	die_value[i] = roll + 1;
	show_debug_message("\tEVENT - LeftPressed - obj_button_roll SAYS Rolled " + string(die_value[i]));
}
good_dice = true;

// -=-=-= BEGIN temporary fix because tanks sit on top of each other

var t;
for(t = 0; t < 4; t++)
{
	var team;
	team = t + current_player;
	if(team > 3) team -= 4;
	
	var i;
	for(i = 0; i < 4; i++)
		pawn[team,i].depth = t;
}

// -=-=-= END temporary fix because tanks sit on top of each other

// check if a move is possible, if not, forfeit turn
if(not is_move_possible())
{
	// TODO display forfeit object
	show_debug_message("\tEVENT - LeftPressed - obj_button_roll SAYS No move possible: FORFEITING")
	next_player();
}
// -=-=-= This next section is just for testing
//else
//{
//var p;
//p[0] = irandom(3);
//p[1] = irandom(3);

//if(pawn[current_player,p[0]].destination > 67) pawn[current_player,p[0]].destination = die_value[0];
//else pawn[current_player,p[0]].destination += die_value[0];
//if(pawn[current_player,p[1]].destination > 67) pawn[current_player,p[1]].destination = die_value[1];
//else pawn[current_player,p[1]].destination += die_value[1];


//current_player++;
//if(current_player > 3) current_player -= 4;	
//instance_activate_object(button_roll);
//}
// -=-=-= End of testing section

show_debug_message("} -- EVENT - LeftPressed - obj_button_roll");
