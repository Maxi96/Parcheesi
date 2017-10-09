instance_deactivate_object(button_roll);

var i;
for(i = 0; i < 2; i += 1)
{
	var roll;
	roll = irandom(5)
	die[i].image_index = roll;
	die_value[i] = roll + 1;
}

// -=-=-= This next section is just for testing

var p;
p[0] = irandom(3);
p[1] = irandom(3);

//pawn[current_player,irandom(3)].destination = die_value[0];
//pawn[current_player,irandom(3)].destination = die_value[1];

if(pawn[current_player,p[0]].destination > 67) pawn[current_player,p[0]].destination = die_value[0];
else pawn[current_player,p[0]].destination += die_value[0];
if(pawn[current_player,p[1]].destination > 67) pawn[current_player,p[1]].destination = die_value[1];
else pawn[current_player,p[1]].destination += die_value[1];

instance_activate_object(button_roll);

// -=-=-= End of testing section

current_player += 1;
if(current_player > 3) current_player -= 4;