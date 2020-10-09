/// @description Insert description here
// You can write your code in this editor
path = path_add();
 
if mp_grid_path(grid, path, x, y, obj_player.x, obj_player.y, 0) {
      //path_start(path, 0, 3, 0);
	  draw_path(path, x, y, true);
}