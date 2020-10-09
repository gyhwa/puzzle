// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dir_touch(_dir, _inst){
	var check_x = x+1;
	var check_y = y;
	if (_dir == 1) {
		check_x = x;
		check_y = y - 1;
	} else if (_dir == 2) {
		var check_x = x-1;
		var check_y = y;	
	} else if (_dir == 3) {
		check_x = x;
		check_y = y + 1;
	}
	return(place_meeting(check_x, check_y, _inst))

}