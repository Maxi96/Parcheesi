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

//show_debug_message("can_piece_advance(" + string(team) + ", " + string(piece) + ", " + string(spaces) + ")\n{");

// assume that the piece can advance the given number of spaces
var result;
result = true;

// check if each space on the way is passable
// if any space along the was is not passable, the piece can not advance by the given number of spaces
var i;
for(i = 1; i < spaces; i++)
{
  if(!space_is_passable(count_forward(team, piece, i))) result = false;
}

//check if we are passing the home arrow
if(pawn[team, piece].is_in_homerow and pawn[team,piece].destination + spaces > nest[team].last_home+1){
	result = false;
}

//check if piece is ging to have a higher number than arrow
if(count_forward(team, piece, i) > pawn[team,piece].arrow_space - piece and !pawn[team,piece].is_in_arrow){
	result = false;
}

// check if the last space is landable
if(result == true and not space_is_landable(count_forward(team, piece, spaces))) result = false;

//show_debug_message("} -- can_piece_advance(" + string(team) + ", " + string(piece) + ", " + string(spaces) + ") RETURNS " + string(result));

return result;
