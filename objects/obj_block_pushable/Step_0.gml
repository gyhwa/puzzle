/// @description Insert description here
// You can write your code in this editor

//fix positioning if not centered
if (y mod 32 != 0) {
	if (y mod 32 < 16) {
		y -= 1
	} else {
		y += 1
	} 
}
if (x mod 32 != 0) {
	if (x mod 32 < 16) {
		x -= 1
	} else {
		x += 1
	} 
}

//redo			
if(keyboard_check_pressed(global.redo)) {
	if (global.turn > 0) {
		mp_grid_clear_cell(grid, x/32, y/32);
		x = x_saved[global.turn - 1]
		y = y_saved[global.turn - 1]
		mp_grid_add_cell(grid, x/32, y/32);
	}
}

x_saved[global.turn] = x;
y_saved[global.turn] = y;

if (locked) {
	// need to move 16 morew
	if (_dir = 0) {
		x += 1
		if (x mod 32 == 0) {
			locked = false
		}
	} else if (_dir = 2) {
		x -= 1
		if (x mod 32 == 0) {
			locked = false
		}
	} else if (_dir = 1) {
		y -= 1
		if (y mod 32 == 0) {
			locked = false
		}
	} else {
		y += 1
		if (y mod 32 == 0) {
			locked = false
		}
	}
}

if (!locked) {
	switch(state) {
		case "idle":
			moved = false;
		break;
		case "move":
			if (dir == 0) {
				hsp = 1*tsize*sp;
				vsp = 0;
			}
			if (dir == 2) {
				hsp = -1*tsize*sp;
				vsp = 0;			
			}
			if (dir == 1) {
				hsp = 0;
				vsp = -1*tsize*sp;			
			}
			if (dir == 3) {
				hsp = 0;
				vsp = 1*tsize*sp;				
			}
			
			//
			if (place_meeting(x+hsp, y+vsp, obj_enemy)) {
				mp_grid_clear_cell(grid, x/32, y/32);
				x += hsp;
				y += vsp;
				mp_grid_add_cell(grid, x/32, y/32);
				moved = true;
				global.turn += 1;
				global.actual_turn += 1;
			} else if (valid_tilemap_move(tiles,x+hsp,y+vsp) && !place_meeting(x+hsp, y+vsp,obj_impassable) && !moved) {
				mp_grid_clear_cell(grid, x/32, y/32);
				x += hsp;
				y += vsp;
				mp_grid_add_cell(grid, x/32, y/32);
				moved = true;
				global.turn += 1;
				global.actual_turn += 1;
			}
			state = "idle";
			
		break;
	}
}

