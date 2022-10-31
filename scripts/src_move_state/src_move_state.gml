script_execute(src_get_input);

#region
show_debug_message("antes da funcition moviemnte");
function movimention() {
	show_debug_message("dentro funcition moviemnte");
	xAxis = (key_right - key_left);
	yAxis = (key_down - key_up);

	//get direction
	directionPlayer = point_direction(0, 0,xAxis,yAxis);
  
	//get length
	if (xAxis == 0) and (yAxis == 0){
		length = 0;
	}else {
		length = speedStep;
	}

	//get speed variables
	hSeepdStep = lengthdir_x(length,directionPlayer);
	vSeepdStep = lengthdir_y(length,directionPlayer);


	//colision check
	if place_meeting(x+hSeepdStep, y,obj_wall){
	 while !place_meeting(x+hSeepdStep, y,obj_wall){
		 x += sign(hSeepdStep)
	 }
	 hSeepdStep = 0;
	}
	x += hSeepdStep;
	
	
	//vertical
	if place_meeting(x, y+vSeepdStep,obj_wall){
	 while !place_meeting(x, y+vSeepdStep,obj_wall){
		 y += sign(vSeepdStep)
	 }
	 vSeepdStep = 0;
	}
	y += vSeepdStep;	

}
#endregion