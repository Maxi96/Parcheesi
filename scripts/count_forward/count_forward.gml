/// count_forward(team, piece, advance)
/// @description finds the given piece's new destination after moving the given number of spaces.
///              Most of the time, this is accomplished simply by adding the
///              value of the dice to the piece's current position number,
///              however, sometimes the piece must "jump" to another space
///              index numer (eg when a piece leaves its nest or when it turns
///              into its home row).
/// @param team the piece's team id number
/// @param piece the piece's id number
/// @param advance the number of spaces we would like to advance the piece
/// @return the index number of the piece's new destination

var team, piece, advance;
team = argument0;
piece = argument1;
advance = argument2;

//show_debug_message("count_forward(" + string(team) + ", " + string(piece) + ", " + string(advance) + ")\n{");

// a negative index will cause an error if the logic below is faulty
var result;
result = -1;

// the current position of the piece
var origin;
origin = pawn[team,piece].destination;

// each player has a different start space, last space and first home space
// these are all space index numbers
var start_space, last_space, start_home;
start_space = nest[team].start_space; // the start space when leaving the nest
last_space = nest[team].last_space; // the last space before turning into the home row
start_home = nest[team].start_home; // the first space of the home row

if(origin + advance == nest[team].last_home + 1){
	result = pawn[team,piece].arrow_space;
	pawn[team, piece].is_in_arrow = true;
}else{
// if the piece is in its nest, its only possible new destination is its start space
// (all nest spaces have index numbers greater than 111)
	if(origin > 111)
	{
		result = start_space;
	}
	// if the piece is not in its nest, then calculate its new destination
	else
	{
		if(origin > last_space)
		{
			if(origin+advance > 67 and !pawn[team, piece].is_in_homerow)
			{
				result = origin + advance - 68;
			}
			else
			{
				result = origin + advance;
			}
		}
		else // turn into home row
		{
			if(origin + advance > last_space)
			{
				result = origin + advance + start_home - last_space - 1;
				pawn[team, piece].is_in_homerow = true;
			}
			else
			{
				result = origin + advance;
			}
		}
	}
}

//show_debug_message("} -- count_forward(" + string(team) + ", " + string(piece) + ", " + string(advance) + ") RETURNS " + string(result));

return result;