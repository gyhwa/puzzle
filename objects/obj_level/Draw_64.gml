/// @description Turn Counter
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fn_turn);
draw_text(1700, 220, "LEVEL "+string(global.rm+1))
draw_set_font(fn_maxturn);
draw_text(1700, 320, @"YOU MAY LEAVE WHEN THE
GHOSTS ARE FREE.")
draw_set_font(fn_turn);
draw_text(1700, 420, "TURN: ")
draw_text(1700, 520, string(global.actual_turn))
draw_text(1700, 620, "SCORE: ")
draw_text(1700, 720, string(score))
draw_set_font(fn_maxturn);
draw_text(1700, 850, message);


draw_set_color($2d3047)
draw_set_halign(fa_left);
draw_text(472*2, 52*2, hint)

//reset

draw_set_font(fn_maxturn);
draw_set_color(c_white);