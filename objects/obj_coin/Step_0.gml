

#region
if (broke = 0) {
	instance_destroy()
}
if (broke = 4) {
 image_index = 0;
}
if (broke = 3) {
 image_index = 1;
}
if (broke = 2) {
 image_index = 1;
}
if (broke = 1) {
 image_index = 3;
}
#endregion

if place_meeting(x,y,obj_range) {
	canbreake = true;
}else {
	canbreake = false;
}
