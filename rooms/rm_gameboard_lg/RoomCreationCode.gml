//globalvar pawn;

// create an array of invisible objects, one object in the centre of each space
globalvar space_position;
space_position[0] = instance_create_layer(437,689, "spaces", space);
space_position[1] = instance_create_layer(437,657, "spaces", space);
space_position[2] = instance_create_layer(437,625, "spaces", space);
space_position[3] = instance_create_layer(437,593, "spaces", space);
space_position[4] = instance_create_layer(437,561, "spaces", space);
space_position[5] = instance_create_layer(437,529, "spaces", space);
space_position[6] = instance_create_layer(437,497, "spaces", space);
space_position[7] = instance_create_layer(437,465, "spaces", space);
space_position[8] = instance_create_layer(465,437, "spaces", space);
space_position[9] = instance_create_layer(497,437, "spaces", space);
space_position[10] = instance_create_layer(529,437, "spaces", space);
space_position[11] = instance_create_layer(561,437, "spaces", space);
space_position[12] = instance_create_layer(593,437, "spaces", space);
space_position[13] = instance_create_layer(625,437, "spaces", space);
space_position[14] = instance_create_layer(657,437, "spaces", space);
space_position[15] = instance_create_layer(689,437, "spaces", space);
space_position[16] = instance_create_layer(689,351, "spaces", space);
space_position[17] = instance_create_layer(689,267, "spaces", space);
space_position[18] = instance_create_layer(657,267, "spaces", space);
space_position[19] = instance_create_layer(625,267, "spaces", space);
space_position[20] = instance_create_layer(593,267, "spaces", space);
space_position[21] = instance_create_layer(561,267, "spaces", space);
space_position[22] = instance_create_layer(529,267, "spaces", space);
space_position[23] = instance_create_layer(497,267, "spaces", space);
space_position[24] = instance_create_layer(465,267, "spaces", space);
space_position[25] = instance_create_layer(437,239, "spaces", space);
space_position[26] = instance_create_layer(437,207, "spaces", space);
space_position[27] = instance_create_layer(437,175, "spaces", space);
space_position[28] = instance_create_layer(437,143, "spaces", space);
space_position[29] = instance_create_layer(437,111, "spaces", space);
space_position[30] = instance_create_layer(437,79, "spaces", space);
space_position[31] = instance_create_layer(437,47, "spaces", space);
space_position[32] = instance_create_layer(437,15, "spaces", space);
space_position[33] = instance_create_layer(351,15, "spaces", space);
space_position[34] = instance_create_layer(267,15, "spaces", space);
space_position[35] = instance_create_layer(267,47, "spaces", space);
space_position[36] = instance_create_layer(267,79, "spaces", space);
space_position[37] = instance_create_layer(267,111, "spaces", space);
space_position[38] = instance_create_layer(267,143, "spaces", space);
space_position[39] = instance_create_layer(267,175, "spaces", space);
space_position[40] = instance_create_layer(267,207, "spaces", space);
space_position[41] = instance_create_layer(267,239, "spaces", space);
space_position[42] = instance_create_layer(239,267, "spaces", space);
space_position[43] = instance_create_layer(207,267, "spaces", space);
space_position[44] = instance_create_layer(175,267, "spaces", space);
space_position[45] = instance_create_layer(143,267, "spaces", space);
space_position[46] = instance_create_layer(111,267, "spaces", space);
space_position[47] = instance_create_layer(79,267, "spaces", space);
space_position[48] = instance_create_layer(47,267, "spaces", space);
space_position[49] = instance_create_layer(15,267, "spaces", space);
space_position[50] = instance_create_layer(15,351, "spaces", space);
space_position[51] = instance_create_layer(15,437, "spaces", space);
space_position[52] = instance_create_layer(47,437, "spaces", space);
space_position[53] = instance_create_layer(79,437, "spaces", space);
space_position[54] = instance_create_layer(111,437, "spaces", space);
space_position[55] = instance_create_layer(143,437, "spaces", space);
space_position[56] = instance_create_layer(175,437, "spaces", space);
space_position[57] = instance_create_layer(207,437, "spaces", space);
space_position[58] = instance_create_layer(239,437, "spaces", space);
space_position[59] = instance_create_layer(267,465, "spaces", space);
space_position[60] = instance_create_layer(267,497, "spaces", space);
space_position[61] = instance_create_layer(267,529, "spaces", space);
space_position[62] = instance_create_layer(267,561, "spaces", space);
space_position[63] = instance_create_layer(267,593, "spaces", space);
space_position[64] = instance_create_layer(267,625, "spaces", space);
space_position[65] = instance_create_layer(267,657, "spaces", space);
space_position[66] = instance_create_layer(267,689, "spaces", space);
space_position[67] = instance_create_layer(351,689, "spaces", space);
space_position[68] = instance_create_layer(351,657, "spaces", space);
space_position[69] = instance_create_layer(351,625, "spaces", space);
space_position[70] = instance_create_layer(351,593, "spaces", space);
space_position[71] = instance_create_layer(351,561, "spaces", space);
space_position[72] = instance_create_layer(351,529, "spaces", space);
space_position[73] = instance_create_layer(351,497, "spaces", space);
space_position[74] = instance_create_layer(351,465, "spaces", space);
space_position[75] = instance_create_layer(657,351, "spaces", space);
space_position[76] = instance_create_layer(625,351, "spaces", space);
space_position[77] = instance_create_layer(593,351, "spaces", space);
space_position[78] = instance_create_layer(561,351, "spaces", space);
space_position[79] = instance_create_layer(529,351, "spaces", space);
space_position[80] = instance_create_layer(497,351, "spaces", space);
space_position[81] = instance_create_layer(465,351, "spaces", space);
space_position[82] = instance_create_layer(351,47, "spaces", space);
space_position[83] = instance_create_layer(351,79, "spaces", space);
space_position[84] = instance_create_layer(351,111, "spaces", space);
space_position[85] = instance_create_layer(351,143, "spaces", space);
space_position[86] = instance_create_layer(351,175, "spaces", space);
space_position[87] = instance_create_layer(351,207, "spaces", space);
space_position[88] = instance_create_layer(351,239, "spaces", space);
space_position[89] = instance_create_layer(47,351, "spaces", space);
space_position[90] = instance_create_layer(79,351, "spaces", space);
space_position[91] = instance_create_layer(111,351, "spaces", space);
space_position[92] = instance_create_layer(143,351, "spaces", space);
space_position[93] = instance_create_layer(175,351, "spaces", space);
space_position[94] = instance_create_layer(207,351, "spaces", space);
space_position[95] = instance_create_layer(239,351, "spaces", space);
space_position[96] = instance_create_layer(351,430, "spaces", space);
space_position[97] = instance_create_layer(308,430, "spaces", space);
space_position[98] = instance_create_layer(394,430, "spaces", space);
space_position[99] = instance_create_layer(351,395, "spaces", space);
space_position[100] = instance_create_layer(430,351, "spaces", space);
space_position[101] = instance_create_layer(430,308, "spaces", space);
space_position[102] = instance_create_layer(430,394, "spaces", space);
space_position[103] = instance_create_layer(395,351, "spaces", space);
space_position[104] = instance_create_layer(351,274, "spaces", space);
space_position[105] = instance_create_layer(394,274, "spaces", space);
space_position[106] = instance_create_layer(308,274, "spaces", space);
space_position[107] = instance_create_layer(351,309, "spaces", space);
space_position[108] = instance_create_layer(274,351, "spaces", space);
space_position[109] = instance_create_layer(274,394, "spaces", space);
space_position[110] = instance_create_layer(274,308, "spaces", space);
space_position[111] = instance_create_layer(309,351, "spaces", space);
space_position[112] = instance_create_layer(559,559, "spaces", space);
space_position[113] = instance_create_layer(559,625, "spaces", space);
space_position[114] = instance_create_layer(625,559, "spaces", space);
space_position[115] = instance_create_layer(625,625, "spaces", space);
space_position[116] = instance_create_layer(559,79, "spaces", space);
space_position[117] = instance_create_layer(559,146, "spaces", space);
space_position[118] = instance_create_layer(625,79, "spaces", space);
space_position[119] = instance_create_layer(625,146, "spaces", space);
space_position[120] = instance_create_layer(79,79, "spaces", space);
space_position[121] = instance_create_layer(79,146, "spaces", space);
space_position[122] = instance_create_layer(146,79, "spaces", space);
space_position[123] = instance_create_layer(146,146, "spaces", space);
space_position[124] = instance_create_layer(79,559, "spaces", space);
space_position[125] = instance_create_layer(79,625, "spaces", space);
space_position[126] = instance_create_layer(146,559, "spaces", space);
space_position[127] = instance_create_layer(146,625, "spaces", space);

// create each pawn and send them to their nest
pawn[0,0] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_red);
pawn[0,1] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_red);
pawn[0,2] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_red);
pawn[0,3] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_red);
pawn[0,0].destination = 112;
pawn[0,1].destination = 113;
pawn[0,2].destination = 114;
pawn[0,3].destination = 115;

pawn[1,0] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_green);
pawn[1,1] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_green);
pawn[1,2] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_green);
pawn[1,3] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_green);
pawn[1,0].destination = 116;
pawn[1,1].destination = 117;
pawn[1,2].destination = 118;
pawn[1,3].destination = 119;

pawn[2,0] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_orange);
pawn[2,1] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_orange);
pawn[2,2] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_orange);
pawn[2,3] = instance_create_layer(random(room_width + 128) - 64, 0 - random(32), "Instances", obj_pawn_orange);
pawn[2,0].destination = 120;
pawn[2,1].destination = 121;
pawn[2,2].destination = 122;
pawn[2,3].destination = 123;

pawn[3,0] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_blue);
pawn[3,1] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_blue);
pawn[3,2] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_blue);
pawn[3,3] = instance_create_layer(random(room_width + 128) - 64, room_height + random(32), "Instances", obj_pawn_blue);
pawn[3,0].destination = 124;
pawn[3,1].destination = 125;
pawn[3,2].destination = 126;
pawn[3,3].destination = 127;