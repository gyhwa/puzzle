/// @description room switch




if (!instance_exists(obj_enemy)) {
	global.rm += 1;
	score += global.actual_turn

	
	switch (global.rm) {
		case 1: 
			room_goto(rm_level_01) 
			break;
		case 2: 
			room_goto(rm_level_02) 
			break;
		case 3: 
			room_goto(rm_level_03) 
			break;
		case 4: 
			room_goto(rm_level_04) 
			break;
		case 5: 
			room_goto(rm_level_05) 

			break;
		default: room_goto(rm_level_exp) break;
	}
}

