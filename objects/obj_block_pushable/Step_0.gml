/// @description Insert description here
// You can write your code in this editor


//reset			
if(keyboard_check_pressed(global.reset)) {
	if (global.turn > 0) {
		mp_grid_clear_cell(grid, x/32, y/32);
		x = x_saved[global.turn - 1]
		y = y_saved[global.turn - 1]
		mp_grid_add_cell(grid, x/32, y/32);
	}
}

x_saved[global.turn] = x;
y_saved[global.turn] = y;

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
			} else if (valid_tilemap_move(tiles,x+hsp,y+vsp) && !place_meeting(x+hsp, y+vsp,obj_impassable) && !moved) {
				mp_grid_clear_cell(grid, x/32, y/32);
				x += hsp;
				y += vsp;
				mp_grid_add_cell(grid, x/32, y/32);
				moved = true;
			}
			state = "idle";
			
		break;
	}
}

