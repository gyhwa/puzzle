/// @description Insert description here
// Directions
dir = floor(direction/90);
if (dir == 0) {
	x1 = x + 32
	x0 = x - 32
	y1 = y
	y0 = y
} else if (dir == 2) {
	x1 = x - 32
	x0 = x + 32
	y1 = y
	y0 = y
} else if (dir == 1) {
	x1 = x
	x0 = x
	y1 = y - 32
	y0 = y + 32
} else {
	x1 = x
	x0 = x
	y1 = y + 32
	y0 = y - 32
}

//check if box is in front
if (instance_place(x1, y1, obj_block_pushable)) {
	sprite_index = spr_enemy_shooter1
	//do nothing else
} else if (creator == "obj_enemy_shooter") {
	//check that it's not created already
	if (!instance_place(x1, y1, obj_enemy_shooter0) && !last) {
		var inst = instance_create_layer(x1, y1, "Instances",obj_enemy_shooter0)
		inst.direction = direction
		inst.image_angle = image_angle;
		inst.creator = object_get_name(object_index);
		inst.creator_id = id;
		inst.last = false;
	}
	last = false;
} else if (creator == "obj_enemy_shooter0") {
	if (!instance_place(x1, y1, obj_enemy_shooter0) && !last) {
		var inst = instance_create_layer(x1, y1, "Instances",obj_enemy_shooter0)
		inst.direction = direction
		inst.image_angle = image_angle;
		inst.creator = object_get_name(object_index);
		inst.creator_id = id;
		inst.sprite_index = spr_enemy_shooter1
		inst.last = true;
	}
}


//fix sprite_index
if (!last && !instance_place(x1, y1, obj_block_pushable)) {
	sprite_index = spr_enemy_shooter0
}


//check if there isn't a creator right behind or another shooter0
if (!instance_place(x0, y0, creator_id)) {
	instance_destroy();
}
