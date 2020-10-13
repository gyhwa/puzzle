/// @description Turn Counter
draw_set_halign(fa_center);

draw_text(1700, 220, @"RELEASE THE GHOSTS BY
RUNNING THEM OVER BY THE BOX.")
draw_set_font(fn_turn);
draw_text(1700, 320, "TURN: ")
draw_text(1700, 420, string(global.actual_turn))
draw_text(1700, 520, "SCORE: ")
draw_text(1700, 620, string(score))
draw_set_font(fn_maxturn);
draw_text(1700, 700, message);


//reset
draw_set_halign(fa_left);
draw_set_font(fn_maxturn);