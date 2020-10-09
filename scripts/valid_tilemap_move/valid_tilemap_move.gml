// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function valid_tilemap_move(_tiles, _goal_x, _goal_y){
	if (tilemap_get_at_pixel(_tiles, _goal_x, _goal_y) != 0) {
		return false;
	} else {
		return true;
	}
}