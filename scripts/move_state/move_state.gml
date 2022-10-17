script_execute(get_input);

//Move
xAxis = (key_right - key_left);
yAxis = (key_down - key_up);

//get direction
directionPlayer = point_direction(0, 0, xAxis,yAxis);

//get length
if (xAxis == 0) and (yAxis == 0){
	length = 0;
}else {
	length = speedStep;
}

//get speed variables
hSeepStep = lengthdir_x(length,directionPlayer);
vSeepStep = lengthdir_y(length,directionPlayer);


//colision check
if place_meeting(x+hSeepStep, y,obj_wall){
 while !place_meeting(x+hSeepStep, y,obj_wall){
	 x += sign(hSeepStep)
 }
 hSeepStep = 0;
}
x+= hSeepStep;

//vertical
if place_meeting(x, y+vSeepStep,obj_wall){
 while !place_meeting(x, y+vSeepStep,obj_wall){
	 y += sign(vSeepStep)
 }
 vSeepStep = 0;
}
y+= vSeepStep;