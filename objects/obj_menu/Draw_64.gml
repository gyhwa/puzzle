/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_font(fn_turn);
var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);

//New Game
if (point_in_rectangle(mousex,mousey, 30, 300, 90+string_width("New Game"), 300+string_height("New Game"))){
	draw_set_color(c_orange); //highlight the word
	if (left_click) room_goto(rm_level_00);
} else {
	draw_set_color(c_white);
}
draw_text(60,300, "New Game");

//Continue

if (file_exists("savedgame.sav")) {
	if (point_in_rectangle(mousex,mousey, 30, 400, 90+string_width("Continue"), 400+string_height("Continue"))){
		draw_set_color(c_orange); //highlight the word
	} else {
			draw_set_color(c_white);
	}
	draw_text(60, 400, "Continue");
} else {
	draw_set_color(c_gray);
	draw_text(60, 400, "Continue");
}

//Controls
draw_set_color(c_gray);
draw_text(60, 500, "Controls");
//Quit
if (point_in_rectangle(mousex,mousey, 30, 600, 90+string_width("Quit"), 600+string_height("Quit"))) {
	draw_set_color(c_orange);
	if (left_click) game_end();
} else {
	draw_set_color(c_white)
}

draw_text(60,600, "Quit");




draw_set_color(c_white)