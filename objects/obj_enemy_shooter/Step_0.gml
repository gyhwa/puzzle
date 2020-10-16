/// @description create first


dir = floor(direction/90)

if (dir == 0) {
	x1 = x + 32
	x2 = x + 64
	y1 = y
	y2 = y
} else if (dir == 2) {
	x1 = x - 32
	x2 = x - 64
	y1 = y
	y2 = y
} else if (dir == 1) {
	x1 = x
	x2 = x
	y1 = y - 32
	y2 = y - 64
} else {
	x1 = x
	x2 = x
	y1 = y + 32
	y2 = y + 64
}

//initially check if there's already a shooter in front
if (!instance_place(x1, y1, obj_enemy_shooter0)) {
	//if (!instance_place(x1, y1, obj_block_pushable)) {
		var inst = instance_create_layer(x1, y1, "Instances",obj_enemy_shooter0)
		inst.direction = direction
		inst.image_xscale = image_xscale;
		inst.image_angle = image_angle;
		inst.creator = object_get_name(object_index);
		inst.creator_id = id;
		inst.last = false;
	//} 
}
