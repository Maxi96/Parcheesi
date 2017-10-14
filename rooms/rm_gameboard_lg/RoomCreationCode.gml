/// @description Large Room Creation Code

show_debug_message("EVENT - Create - rm_gameboard_lg\n{");
randomize();

globalvar setting_quick_start;
setting_quick_start = true;

globalvar move_spaces;
move_spaces[0] = 0;
move_spaces[1] = 0;

// create an array of invisible objects, one object in the centre of each space
globalvar space_position;
space_position[0] = instance_create_layer(437,689, "spaces", space);
space_position[0].course = 90;
space_position[1] = instance_create_layer(437,657, "spaces", space);
space_position[1].course = 90;
space_position[2] = instance_create_layer(437,625, "spaces", space);
space_position[2].course = 90;
space_position[3] = instance_create_layer(437,593, "spaces", space);
space_position[3].course = 90;
space_position[4] = instance_create_layer(437,561, "spaces", space);
space_position[4].course = 90;
space_position[4].start = true;
space_position[4].safe = true;
space_position[5] = instance_create_layer(437,529, "spaces", space);
space_position[5].course = 90;
space_position[6] = instance_create_layer(437,497, "spaces", space);
space_position[6].course = 90;
space_position[7] = instance_create_layer(437,465, "spaces", space);
space_position[7].course = 90;
space_position[8] = instance_create_layer(465,437, "spaces", space);
space_position[8].course = 0;
space_position[9] = instance_create_layer(497,437, "spaces", space);
space_position[9].course = 0;
space_position[10] = instance_create_layer(529,437, "spaces", space);
space_position[10].course = 0;
space_position[11] = instance_create_layer(561,437, "spaces", space);
space_position[11].course = 0;
space_position[11].safe = true;
space_position[12] = instance_create_layer(593,437, "spaces", space);
space_position[12].course = 0;
space_position[13] = instance_create_layer(625,437, "spaces", space);
space_position[13].course = 0;
space_position[14] = instance_create_layer(657,437, "spaces", space);
space_position[14].course = 0;
space_position[15] = instance_create_layer(689,437, "spaces", space);
space_position[15].course = 0;
space_position[16] = instance_create_layer(689,351, "spaces", space);
space_position[16].course = 90;
space_position[16].safe = true;
space_position[17] = instance_create_layer(689,267, "spaces", space);
space_position[17].course = 180;
space_position[18] = instance_create_layer(657,267, "spaces", space);
space_position[18].course = 180;
space_position[19] = instance_create_layer(625,267, "spaces", space);
space_position[19].course = 180;
space_position[20] = instance_create_layer(593,267, "spaces", space);
space_position[20].course = 180;
space_position[21] = instance_create_layer(561,267, "spaces", space);
space_position[21].course = 180;
space_position[21].start = true;
space_position[21].safe = true;
space_position[22] = instance_create_layer(529,267, "spaces", space);
space_position[22].course = 180;
space_position[23] = instance_create_layer(497,267, "spaces", space);
space_position[23].course = 180;
space_position[24] = instance_create_layer(465,267, "spaces", space);
space_position[24].course = 180;
space_position[25] = instance_create_layer(437,239, "spaces", space);
space_position[25].course = 90;
space_position[26] = instance_create_layer(437,207, "spaces", space);
space_position[26].course = 90;
space_position[27] = instance_create_layer(437,175, "spaces", space);
space_position[27].course = 90;
space_position[28] = instance_create_layer(437,143, "spaces", space);
space_position[28].course = 90;
space_position[28].safe = true;
space_position[29] = instance_create_layer(437,111, "spaces", space);
space_position[29].course = 90;
space_position[30] = instance_create_layer(437,79, "spaces", space);
space_position[30].course = 90;
space_position[31] = instance_create_layer(437,47, "spaces", space);
space_position[31].course = 90;
space_position[32] = instance_create_layer(437,15, "spaces", space);
space_position[32].course = 90;
space_position[33] = instance_create_layer(351,15, "spaces", space);
space_position[33].course = 180;
space_position[33].safe = true;
space_position[34] = instance_create_layer(267,15, "spaces", space);
space_position[34].course = 270;
space_position[35] = instance_create_layer(267,47, "spaces", space);
space_position[35].course = 270;
space_position[36] = instance_create_layer(267,79, "spaces", space);
space_position[36].course = 270;
space_position[37] = instance_create_layer(267,111, "spaces", space);
space_position[37].course = 270;
space_position[38] = instance_create_layer(267,143, "spaces", space);
space_position[38].course = 270;
space_position[38].start = true;
space_position[38].safe = true;
space_position[39] = instance_create_layer(267,175, "spaces", space);
space_position[39].course = 270;
space_position[40] = instance_create_layer(267,207, "spaces", space);
space_position[40].course = 270;
space_position[41] = instance_create_layer(267,239, "spaces", space);
space_position[41].course = 270;
space_position[42] = instance_create_layer(239,267, "spaces", space);
space_position[42].course = 180;
space_position[43] = instance_create_layer(207,267, "spaces", space);
space_position[43].course = 180;
space_position[44] = instance_create_layer(175,267, "spaces", space);
space_position[44].course = 180;
space_position[45] = instance_create_layer(143,267, "spaces", space);
space_position[45].course = 180;
space_position[45].safe = true;
space_position[46] = instance_create_layer(111,267, "spaces", space);
space_position[46].course = 180;
space_position[47] = instance_create_layer(79,267, "spaces", space);
space_position[47].course = 180;
space_position[48] = instance_create_layer(47,267, "spaces", space);
space_position[48].course = 180;
space_position[49] = instance_create_layer(15,267, "spaces", space);
space_position[49].course = 180;
space_position[50] = instance_create_layer(15,351, "spaces", space);
space_position[50].course = 270;
space_position[50].safe = true;
space_position[51] = instance_create_layer(15,437, "spaces", space);
space_position[51].course = 0;
space_position[52] = instance_create_layer(47,437, "spaces", space);
space_position[52].course = 0;
space_position[53] = instance_create_layer(79,437, "spaces", space);
space_position[53].course = 0;
space_position[54] = instance_create_layer(111,437, "spaces", space);
space_position[54].course = 0;
space_position[55] = instance_create_layer(143,437, "spaces", space);
space_position[55].course = 0;
space_position[55].start = true;
space_position[55].safe = true;
space_position[56] = instance_create_layer(175,437, "spaces", space);
space_position[56].course = 0;
space_position[57] = instance_create_layer(207,437, "spaces", space);
space_position[57].course = 0;
space_position[58] = instance_create_layer(239,437, "spaces", space);
space_position[58].course = 0;
space_position[59] = instance_create_layer(267,465, "spaces", space);
space_position[59].course = 270;
space_position[60] = instance_create_layer(267,497, "spaces", space);
space_position[60].course = 270;
space_position[61] = instance_create_layer(267,529, "spaces", space);
space_position[61].course = 270;
space_position[62] = instance_create_layer(267,561, "spaces", space);
space_position[62].course = 270;
space_position[62].safe = true;
space_position[63] = instance_create_layer(267,593, "spaces", space);
space_position[63].course = 270;
space_position[64] = instance_create_layer(267,625, "spaces", space);
space_position[64].course = 270;
space_position[65] = instance_create_layer(267,657, "spaces", space);
space_position[65].course = 270;
space_position[66] = instance_create_layer(267,689, "spaces", space);
space_position[66].course = 270;
space_position[67] = instance_create_layer(351,689, "spaces", space);
space_position[67].course = 0;
space_position[67].safe = true;

// HOME ROWS
// red home row
space_position[68] = instance_create_layer(351,657, "spaces", space);
space_position[68].course = 90;
space_position[68].home = true;
space_position[69] = instance_create_layer(351,625, "spaces", space);
space_position[69].course = 90;
space_position[69].home = true;
space_position[70] = instance_create_layer(351,593, "spaces", space);
space_position[70].course = 90;
space_position[70].home = true;
space_position[71] = instance_create_layer(351,561, "spaces", space);
space_position[71].course = 90;
space_position[71].home = true;
space_position[72] = instance_create_layer(351,529, "spaces", space);
space_position[72].course = 90;
space_position[72].home = true;
space_position[73] = instance_create_layer(351,497, "spaces", space);
space_position[73].course = 90;
space_position[73].home = true;
space_position[74] = instance_create_layer(351,465, "spaces", space);
space_position[74].course = 90;
space_position[74].home = true;

// red finish
space_position[75] = instance_create_layer(351,430, "spaces", space);
space_position[75].course = 90;
space_position[75].finish = true;
space_position[76] = instance_create_layer(308,430, "spaces", space);
space_position[76].course = 90;
space_position[76].finish = true;
space_position[77] = instance_create_layer(394,430, "spaces", space);
space_position[77].course = 90;
space_position[77].finish = true;
space_position[78] = instance_create_layer(351,395, "spaces", space);
space_position[78].course = 90;
space_position[78].finish = true;

// green home row
space_position[79] = instance_create_layer(657,351, "spaces", space);
space_position[79].course = 180;
space_position[79].home = true;
space_position[80] = instance_create_layer(625,351, "spaces", space);
space_position[80].course = 180;
space_position[80].home = true;
space_position[81] = instance_create_layer(593,351, "spaces", space);
space_position[81].course = 180;
space_position[81].home = true;
space_position[82] = instance_create_layer(561,351, "spaces", space);
space_position[82].course = 180;
space_position[82].home = true;
space_position[83] = instance_create_layer(529,351, "spaces", space);
space_position[83].course = 180;
space_position[83].home = true;
space_position[84] = instance_create_layer(497,351, "spaces", space);
space_position[84].course = 180;
space_position[84].home = true;
space_position[85] = instance_create_layer(465,351, "spaces", space);
space_position[85].course = 180;
space_position[85].home = true;

// green finish
space_position[86] = instance_create_layer(430,351, "spaces", space);
space_position[86].course = 180;
space_position[86].finish = true;
space_position[87] = instance_create_layer(430,308, "spaces", space);
space_position[87].course = 180;
space_position[87].finish = true;
space_position[88] = instance_create_layer(430,394, "spaces", space);
space_position[88].course = 180;
space_position[88].finish = true;
space_position[89] = instance_create_layer(394,351, "spaces", space);
space_position[89].course = 180;
space_position[89].finish = true;

// orange home row
space_position[90] = instance_create_layer(351,47, "spaces", space);
space_position[90].course = 270;
space_position[90].home = true;
space_position[91] = instance_create_layer(351,79, "spaces", space);
space_position[91].course = 270;
space_position[91].home = true;
space_position[92] = instance_create_layer(351,111, "spaces", space);
space_position[92].course = 270;
space_position[92].home = true;
space_position[93] = instance_create_layer(351,143, "spaces", space);
space_position[93].course = 270;
space_position[93].home = true;
space_position[94] = instance_create_layer(351,175, "spaces", space);
space_position[94].course = 270;
space_position[94].home = true;
space_position[95] = instance_create_layer(351,207, "spaces", space);
space_position[95].course = 270;
space_position[95].home = true;
space_position[96] = instance_create_layer(351,239, "spaces", space);
space_position[96].course = 270;
space_position[96].home = true;

// orange finish
space_position[97] = instance_create_layer(351,274, "spaces", space);
space_position[97].course = 270;
space_position[97].finish = true;
space_position[98] = instance_create_layer(394,274, "spaces", space);
space_position[98].course = 270;
space_position[98].finish = true;
space_position[99] = instance_create_layer(308,274, "spaces", space);
space_position[99].course = 270;
space_position[99].finish = true;
space_position[100] = instance_create_layer(351,309, "spaces", space);
space_position[100].course = 270;
space_position[100].finish = true;

// blue home row
space_position[101] = instance_create_layer(47,351, "spaces", space);
space_position[101].course = 0;
space_position[101].home = true;
space_position[102] = instance_create_layer(79,351, "spaces", space);
space_position[102].course = 0;
space_position[102].home = true;
space_position[103] = instance_create_layer(111,351, "spaces", space);
space_position[103].course = 0;
space_position[103].home = true;
space_position[104] = instance_create_layer(143,351, "spaces", space);
space_position[104].course = 0;
space_position[104].home = true;
space_position[105] = instance_create_layer(175,351, "spaces", space);
space_position[105].course = 0;
space_position[105].home = true;
space_position[106] = instance_create_layer(207,351, "spaces", space);
space_position[106].course = 0;
space_position[106].home = true;
space_position[107] = instance_create_layer(239,351, "spaces", space);
space_position[107].course = 0;
space_position[107].home = true;

// blue finish
space_position[108] = instance_create_layer(274,351, "spaces", space);
space_position[108].course = 0;
space_position[108].finish = true;
space_position[109] = instance_create_layer(274,394, "spaces", space);
space_position[109].course = 0;
space_position[109].finish = true;
space_position[110] = instance_create_layer(274,308, "spaces", space);
space_position[110].course = 0;
space_position[110].finish = true;
space_position[111] = instance_create_layer(309,351, "spaces", space);
space_position[111].course = 0;
space_position[111].finish = true;

// NESTS
// red nest
space_position[112] = instance_create_layer(559,559, "spaces", space);
space_position[112].course = 180;
space_position[112].nest = true;
space_position[113] = instance_create_layer(625,559, "spaces", space);
space_position[113].course = 180;
space_position[113].nest = true;
space_position[114] = instance_create_layer(559,625, "spaces", space);
space_position[114].course = 180;
space_position[114].nest = true;
space_position[115] = instance_create_layer(625,625, "spaces", space);
space_position[115].course = 180;
space_position[115].nest = true;

// green nest
space_position[116] = instance_create_layer(559,146, "spaces", space);
space_position[116].course = 270;
space_position[116].nest = true;
space_position[117] = instance_create_layer(559,79, "spaces", space);
space_position[117].course = 270;
space_position[117].nest = true;
space_position[118] = instance_create_layer(625,146, "spaces", space);
space_position[118].course = 270;
space_position[118].nest = true;
space_position[119] = instance_create_layer(625,79, "spaces", space);
space_position[119].course = 270;
space_position[119].nest = true;

// orange nest
space_position[120] = instance_create_layer(146,146, "spaces", space);
space_position[120].course = 0;
space_position[120].nest = true;
space_position[121] = instance_create_layer(79,146, "spaces", space);
space_position[121].course = 0;
space_position[121].nest = true;
space_position[122] = instance_create_layer(146,79, "spaces", space);
space_position[122].course = 0;
space_position[122].nest = true;
space_position[123] = instance_create_layer(79,79, "spaces", space);
space_position[123].course = 0;
space_position[123].nest = true;

// blue nest
space_position[124] = instance_create_layer(146,559, "spaces", space);
space_position[124].course = 90;
space_position[124].nest = true;
space_position[125] = instance_create_layer(146,625, "spaces", space);
space_position[125].course = 90;
space_position[125].nest = true;
space_position[126] = instance_create_layer(79,559, "spaces", space);
space_position[126].course = 90;
space_position[126].nest = true;
space_position[127] = instance_create_layer(79,625, "spaces", space);
space_position[127].course = 90;
space_position[127].nest = true;

globalvar nest;

// red nest
nest[0] = instance_create_layer(592,592, "spaces", obj_nest);
nest[0].start_space = 4;
nest[0].last_space = 67;
nest[0].start_home = 68;
nest[0].last_home = 74;
// green nest
nest[1] = instance_create_layer(592,112, "spaces", obj_nest);
nest[1].start_space = 21;
nest[1].last_space = 16;
nest[1].start_home = 79;
nest[1].last_home = 85;
// orange nest
nest[2] = instance_create_layer(112,112, "spaces", obj_nest);
nest[2].start_space = 38;
nest[2].last_space = 33;
nest[2].start_home = 90;
nest[2].last_home = 96;
// blue nest
nest[3] = instance_create_layer(112,592, "spaces", obj_nest);
nest[3].start_space = 55;
nest[3].last_space = 50;
nest[3].start_home = 101;
nest[3].last_home = 107;

// create each pawn and send them to their nest
globalvar pawn;
var i;
for(i = 0; i <= 3; i++)
{
	pawn[0,i] = instance_create_layer(704,704, "Instances", obj_pawn_red);
	pawn[0,i].id_team = 0;
	pawn[0,i].id_piece = i;
	pawn[0,i].destination = 112 + i;
	pawn[0,i].is_in_nest = true;
	nest[0].occupants++;
}

for(i = 0; i <= 3; i++)
{
	pawn[1,i] = instance_create_layer(704,0, "Instances", obj_pawn_green);
	pawn[1,i].id_team = 1;
	pawn[1,i].id_piece = i;
	pawn[1,i].destination = 116 + i;
	pawn[1,i].is_in_nest = true;
	nest[1].occupants++;
}

for(i = 0; i <= 3; i++)
{
	pawn[2,i] = instance_create_layer(0,0, "Instances", obj_pawn_orange);
	pawn[2,i].id_team = 2;
	pawn[2,i].id_piece = i;
	pawn[2,i].destination = 120 + i;
	pawn[2,i].is_in_nest = true;
	nest[2].occupants++;
}

for(i = 0; i <= 3; i++)
{
	pawn[3,i] = instance_create_layer(0,704, "Instances", obj_pawn_blue);
	pawn[3,i].id_team = 3;
	pawn[3,i].id_piece = i;
	pawn[3,i].destination = 124 + i;
	pawn[3,i].is_in_nest = true;
	nest[3].occupants++;
}

if setting_quick_start
{
	pawn[0,1].destination = 4;
	pawn[0,1].is_in_nest = false;
	pawn[1,1].destination = 21;
	pawn[1,1].is_in_nest = false;
	pawn[2,1].destination = 38;
	pawn[2,1].is_in_nest = false;
	pawn[3,1].destination = 55;
	pawn[3,1].is_in_nest = false;
}


globalvar die;
die[0] = instance_create_layer(740,686, "admin", obj_White_die);
die[1] = instance_create_layer(810,686, "admin", obj_Red_die);

globalvar good_dice;
good_dice = false;

globalvar button_roll;
button_roll = instance_create_layer(740,616, "admin", obj_button_roll);

globalvar button_move, button_move_count;
button_move_count = 0;

globalvar current_player;
current_player = irandom(3);
instance_create_layer(705,5, "admin", obj_whos_turn);

globalvar selected_piece;

show_debug_message("} -- EVENT - Create - rm_gameboard_lg");
