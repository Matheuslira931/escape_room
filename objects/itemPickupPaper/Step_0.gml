
#region
if (broke = 0) {
	instance_destroy()
}
if (broke = 1) {
 image_index = 0;
}
#endregion

if place_meeting(x,y,obj_range) {
	canbreake = true;
}else {
	canbreake = false;
}

if (global.coin == 7) {
	room_goto(rm_end);
}
