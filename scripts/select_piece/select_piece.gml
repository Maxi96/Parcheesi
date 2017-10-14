/// select_piece(piece_id)
/// @description select a piece by piece ID.
/// @param piece_id the piece ID

var piece_id;
piece_id = argument0;

instance_destroy(obj_selection);
selected_piece = piece_id;
instance_create_layer(pawn[current_player,piece_id].x ,pawn[current_player,piece_id].y, "Instances", obj_selection);
