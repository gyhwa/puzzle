/// @description create first



//initially check if there's already a shooter in front
if (!instance_place(x1, y1, obj_enemy_shooter0)) {
	if (!instance_place(x1, y1, obj_block_pushable)) {
		if (!instance_place(x2, y2, obj_block_pushable)) {
			var inst = instance_create_layer(x1, y1, "Instances",obj_enemy_shooter0)
			inst.direction = direction
			inst.image_angle = image_angle;
			inst.creator = object_get_name(object_index);
			inst.creator_id = id;
			inst.last = false;
		}
	} else {
		//block flow
	}
}
//if empty
	//if second is block show first item
	//else show the other shooter
//