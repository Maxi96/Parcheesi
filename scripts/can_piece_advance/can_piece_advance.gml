/// can_piece_advance(team, piece, spaces)
/// @description check to see if the given piece can advance the given number of spaces
/// @param team  the piece's team id number
/// @param piece  the piece's id number
/// @param spaces  the number of spaces to try to advance
/// @return true if the piece can advance the given number of spaces, otherwise false

var team, piece, spaces;
team = argument0;
piece = argument1;
spaces = argument2;

show_debug_message("can_piece_advance(" + string(team) + ", " + string(piece) + ", " + string(spaces) + ")\n{");

// assume that the piece can advance the given number of spaces
var result;
result = true;

// check if each space on the way is passable
// if any space along the was is not passable, the piece can not advance by the given number of spaces
var i;
for(i = 1; i < spaces; i++)
{
  if(not space_is_passable(count_forward(team, piece, i))) result = false;
}

//check if we are passing the home arrow
if(pawn[team, piece].is_in_homerow and pawn[team,piece].destination + spaces > nest[team].last_home+1){
	result = false;
}


if(pawn[team,piece].destination + spaces > nest[team].last_space){
	if(pawn[team,piece].destination + spaces + nest[team].start_home - nest[team].last_space - 1 > nest[team].last_home+1){
		result = false;
	}
}

// check if the last space is landable
if(result == true and not space_is_landable(count_forward(team, piece, spaces))) result = false;
//if(!space_position[count_forward(team, piece, spaces)].safe && space_position[count_forward(team, piece, spaces)].occupants == 1 && space_position[count_forward(team, piece, spaces)].occupantsTeam != current_player) "Start a Battle" => callin a function;

show_debug_message("} -- can_piece_advance(" + string(team) + ", " + string(piece) + ", " + string(spaces) + ") RETURNS " + string(result));

return result;
