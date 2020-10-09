/// @description Insert description here
// You can write your code in this editor
globalvar grid;
tsize = 32;
grid = mp_grid_create(0, 0, room_width / tsize, room_height /tsize, tsize, tsize);

layerID = layer_get_id("Collisions");
mapID = layer_tilemap_get_id(layerID);

for (var i = 0; i < room_width/32; i++) {
	var xx = i * tsize;
	for (var n = 0; n < room_height/32; n++) {
		var yy = n * tsize
		if(tilemap_get_at_pixel(mapID, xx, yy)) {
			mp_grid_add_cell(grid, i, n);
		}
	}
}

