/// @description Insert description here
// You can write your code in this editor

//avoid blocks
//get to player
//reset			
if(keyboard_check_pressed(global.reset)) {
	if (global.turn > 0) {
		x = x_saved[global.turn - 1]
		y = y_saved[global.turn - 1]
		prev_turn -= 1;
	}
}

x_saved[global.turn] = x;
y_saved[global.turn] = y;


 

   
   
if (global.turn > prev_turn) {
	if (move > move_count) {
		if (!prev) {
			prev_turn += 1;
			prev = true;
		}
		move_count += 1;
		path = path_add();
		//calculate move and change x and y
		if (global.turn > 0) {
			if mp_grid_path(grid, path, x, y, obj_player.x_saved[global.turn -1], obj_player.y_saved[global.turn -1], 0) {
				path_start(path, 32, path_action_stop, true);
			}
		}
	} else {
		//rest moves
		move_count = 0;
	}
} else {
	path_end();
	prev = false;
}