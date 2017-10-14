/// raise_current_player_to_top()
/// @description rais the current player's pieces to the top so we can see them clearly.

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
