function grid_draw(tsize){
		draw_set_alpha(0.2);
		draw_set_font(fn_debug);
		for(var i=0; i<= max(room_width, room_height); i+=tsize) {
		     draw_line(0, i, room_width, i);
		     draw_line(i, 0, i, room_height);
		}
		for(var xx=0; xx<= room_width; xx+=tsize) {
			for (var yy=0; yy <= room_height; yy+=tsize) {
			
				draw_text(xx+5, yy + 5, string(xx/32))
				draw_text(xx+5, yy + 15, string(yy/32))
			}
		}
		draw_set_alpha(1);
}