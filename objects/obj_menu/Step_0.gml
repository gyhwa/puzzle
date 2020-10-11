/// @description Insert description here
var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);

//
if (point_in_rectangle(mousex,mousey, 30, 400, 90+string_width("Continue"), 400+string_height("Continue"))){
	if (file_exists("savedgame.sav") && left_click) {
		var _wrapper = LoadJSONFromFile("savedgame.sav");
		var _list = _wrapper[? "ROOT"];
		global.rm = _list[| 1];
		score = _list[| 2];
		room_goto(_list[| 0]);
	} 
}
