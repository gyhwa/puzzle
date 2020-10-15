/// @description level spawner
switch(room) {
	case rm_level_00:
		message = @"Press arrow keys to move.
Shift to push a box.
R to refresh the entire level."
		hint = @"HINT: Push the boxes over the ghost.
The blue ghosts will cause the box 
to disappear on contact.

When all ghosts are gone, exit through 
the tombstone."
	break;
	case rm_level_01:
		message = "Press SPACE to travel back in time."
		hint = @"The red ghost will leave behind 
it's skeleton. But it won't destroy the box
unlike the blue ghost. Thank you red ghost.

Don't touch the skeleton. "
	break;
	case rm_level_02:
		message = ""
		hint = @"While the ghosts are a ghost, you can walk
through them. They're ghosts after all.

Now you go free those ghosts. No more help 
from me now."
	break;
	case rm_level_03:
		message = ""
		hint = ""
	break;
	case rm_level_04:
		message = ""
		hint = ""
	break;
	case rm_level_05:
		var inst = instance_create_layer(400, 208,"Instances", obj_enemy_babyshooter);
		inst.direction = 180;
		inst.image_xscale = -1;
		message = ""
		hint = ""
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