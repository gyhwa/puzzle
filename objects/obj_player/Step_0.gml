//fix positioning if not centered
if (!locked) {
	if ((y+16) mod 32 != 0) {
		if ((y+16) < 16) {
			y += 1
		} else {
			y -= 1
		} 
	}
	if ((x+16) mod 32 != 0) {
		if ((x+16) < 16) {
			x += 1
		} else {
			x -= 1
		} 
	} 
}

//unlock
if (!instance_place(x,y,obj_enemy_shooter0) && !instance_place(x,y,obj_skull)) {
	locked = false;
}


if (keyboard_check_pressed(global.menu)) {
	room_goto(rm_menu);
}


//inputs
hsp = keyboard_check_pressed(global.right) - keyboard_check_pressed(global.left);
vsp = keyboard_check_pressed(global.down) - keyboard_check_pressed(global.up);


if (keyboard_check_pressed(global.push)) {
	state = "push"
}


//moving
hsp *= tsize*sp;
vsp *= tsize*sp;


//redo
if(keyboard_check_pressed(global.redo)) {
//if(keyboard_check_pressed(global.redo) && !locked) {
	if (global.turn > 0) {
		global.turn -= 1
		x = x_saved[global.turn]
		y = y_saved[global.turn]
		dir = dir_saved[global.turn]
		global.actual_turn += 1;
	}
}


if (vsp != 0 || hsp != 0) {
	state = "move"
	_dir = point_direction(0, 0, hsp, vsp); 
	dir = floor(_dir/90);
}



	x_saved[global.turn] = x;
	y_saved[global.turn] = y;
	dir_saved[global.turn] = dir;



switch(state) {
	case "idle": 
		//redo all variables
	break;
	case "move":
		if (!locked) {
			if (valid_tilemap_move(tiles,x+hsp,y+vsp) && !place_meeting(x+hsp, y+vsp,obj_impassable)) {	
				x += hsp;
				y += vsp;

				if (vsp != 0 || hsp != 0) {
					global.turn += 1;
					global.actual_turn += 1;
				}
			
			} else {
				//cannot move
			}
			if (alarm[0] <= 0) {
				alarm[0] = 1;
			}
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
			inst.locked = false;
			inst.state = "move"
		}
		if (alarm[0] <= 0) {
			alarm[0] = 1;
		}

	break;
}


sprite_index = asset_get_index("spr_player_" + state + string(dir));