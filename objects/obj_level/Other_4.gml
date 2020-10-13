/// @description level spawner
switch(room) {
	case rm_level_00:
		message = @"Press arrow keys to move.
Shift to push a box.
F to travel back in time.
R to refresh the entire level.

WATCH OUT THE BLUE GHOST WILL DESTROY 
THE BOX AND THEN YOU WILL HAVE NO BOX"
	break;
	case rm_level_01:
		message = @"The red ghost will leave a skull.
Touching the skull resets the entire level."
	break;
	case rm_level_02:
		message = ""
	break;
	case rm_level_03:
		message = ""
	break;
	case rm_level_exp:
		instance_create_layer(tsize+16, tsize+16,"Instances", obj_player);
		instance_create_layer(tsize*5, tsize*2,"Instances", obj_block_pushable);
		instance_create_layer(tsize*3, tsize*2,"Instances", obj_block_pushable);
		//instance_create_layer(tsize*5+16, tsize*4+16,"Instances", obj_enemy_common);
	break;
}

//save
_root_list = ds_list_create();
ds_list_add(_root_list, room)
ds_list_add(_root_list, global.rm)
ds_list_add(_root_list, score)

//wrap in map
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper, "ROOT", _root_list);

//save all to a string
var _string = json_encode(_wrapper);
SaveStringtoFile("savedgame.sav", _string);

//nuke the data
ds_map_destroy(_wrapper);

show_debug_message("Game Saved")