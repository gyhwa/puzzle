//inputs
hsp = keyboard_check_pressed(global.right) - keyboard_check_pressed(global.left);
vsp = keyboard_check_pressed(global.down) - keyboard_check_pressed(global.up);

if (keyboard_check(global.dash)) {
	dash = true;
}

if (keyboard_check_pressed(global.push)) {
	state = "push"
}



//moving
if (dash) {
	sp = 2;
} else {
	sp = 1;
}
hsp *= tsize*sp;
vsp *= tsize*sp;

//turn tracking
global.prev_turn = global.turn

//reset
if(keyboard_check_pressed(global.reset)) {
	if (global.turn > 0) {
		global.turn -= 1
		x = x_saved[global.turn]
		y = y_saved[global.turn]
		dir = dir_saved[global.turn]
	}
}

if (vsp != 0 || hsp != 0) {
	state = "move"
	_dir = point_direction(0, 0, hsp, vsp); 
	dir = floor(_dir/90);
}

//x_saved = {}

x_saved[global.turn] = x;
y_saved[global.turn] = y;
dir_saved[global.turn] = dir;

switch(state) {
	case "idle": 
		//reset all variables
		 dash = false;
	break;
	case "move":
		if (valid_tilemap_move(tiles,x+hsp,y+vsp) && !place_meeting(x+hsp, y+vsp,obj_impassable)) {	
			x += hsp;
			y += vsp;

			if (vsp != 0 || hsp != 0) {
				global.turn += 1;
				show_debug_message(string(global.turn))
			}
			
		} else {
			show_debug_message("nope")
		}
		if (alarm[0] <= 0) {
			alarm[0] = 1;
		}

	break;
	case "push":
		var xx;
		var yy;
		if (dir == 0) {
			xx = x + tsize /2;
			yy = y;
		}
		if (dir == 2) {
			xx = x - tsize / 2;
			yy = y;
		}
		if (dir == 1) {
			xx = x;
			yy = y - tsize / 2;
		}
		if (dir == 3) {
			xx = x;
			yy = y + tsize/2;
		}
		var inst = instance_place(xx,yy,obj_block_pushable)
		if (inst) {
			inst.dir = dir
			inst.state = "move"
		}
		if (alarm[0] <= 0) {
			alarm[0] = 1;
		}

	break;
}

sprite_index = asset_get_index("spr_player_" + state + string(dir));