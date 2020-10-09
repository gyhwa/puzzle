/// @description level spawner
switch(room) {
	case rm_level_01:
		instance_create_layer(tsize*27+16, tsize*13+16,"Instances", obj_player);
		instance_create_layer(tsize*30, tsize*13,"Instances", obj_block_pushable);
		//instance_create_layer(tsize*5+16, tsize*4+16,"Instances", obj_enemy_common);
		show_debug_message("hello");
	break;
	case rm_level_exp:
		instance_create_layer(tsize+16, tsize+16,"Instances", obj_player);
		instance_create_layer(tsize*5, tsize*2,"Instances", obj_block_pushable);
		instance_create_layer(tsize*3, tsize*2,"Instances", obj_block_pushable);
		//instance_create_layer(tsize*5+16, tsize*4+16,"Instances", obj_enemy_common);
		show_debug_message("hello");
	break;
}
