//script_execute(src_move_state);
	#region //gegt input
		key_up = keyboard_check(ord("W"));
		key_left = keyboard_check(ord("A"));
		key_down = keyboard_check(ord("S"));
		key_right = keyboard_check(ord("D"));

		xAxis = (key_right - key_left);
		yAxis = (key_down - key_up);	
	#endregion
	
	#region //movimentacao
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
		

		//horizon check wall
		if place_meeting(x+hSeepdStep, y,obj_wall){
		 while !place_meeting(x+hSeepdStep, y,obj_wall){
			 x += sign(hSeepdStep)
		 }
		 hSeepdStep = 0;
		}
	
		//vertical check wall
		if place_meeting(x, y+vSeepdStep,obj_wall){
		 while !place_meeting(x, y+vSeepdStep,obj_wall){
			 y += sign(vSeepdStep)
		 }
		 vSeepdStep = 0;
		}
		
		//vertical check endmap
		if place_meeting(x, y+vSeepdStep,obj_wallinv){
		 while !place_meeting(x, y+vSeepdStep,obj_wallinv){
			 y += sign(vSeepdStep)
		 }
		 vSeepdStep = 0;
		}
		y += vSeepdStep;
		
		//horizon check endmap
		if place_meeting(x+hSeepdStep, y,obj_wallinv){
		 while !place_meeting(x+hSeepdStep, y,obj_wallinv){
			 x += sign(hSeepdStep)
		 }
		 hSeepdStep = 0;
		}
		x += hSeepdStep;
	
	#endregion

#region//control sprite
	image_speed = sign(length)*.2;
	if (length == 0) image_index = 0;
 
 
	//vertical sprite
	if (vSeepdStep > 0 ) {
		sprite_index = spr_player_down
	} else if (vSeepdStep < 0) {
		sprite_index = spr_player_up
	}

	//horizontal sprite
	if (hSeepdStep > 0 ) {
		sprite_index = spr_player_right
	} else if (hSeepdStep < 0) {
		sprite_index = spr_player_left
	}
#endregion