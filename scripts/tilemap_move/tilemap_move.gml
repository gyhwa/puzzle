// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilemap_move(_tiles, _hsp,_vsp, _bbox_side, _bbox_vertical, _correction){
		if (tilemap_get_at_pixel(_tiles, _bbox_side+_hsp, bbox_top) != 0 ||tilemap_get_at_pixel(_tiles, _bbox_side+_hsp, bbox_bottom) != 0 ) {
			if (_hsp>0) {
				x = x - (x mod 32) + 31 - (bbox_right - x) - _correction
			} else {
				x = x - (x mod 32) - (bbox_left - x) + _correction
			}
			_hsp = 0;
		}
		if(tilemap_get_at_pixel(_tiles, bbox_left, _bbox_vertical+_vsp) != 0 ||tilemap_get_at_pixel(_tiles, bbox_right, _bbox_vertical+_vsp) != 0 ){
			if (_vsp>0) {
				y = y - (y mod 32) + 31 - (bbox_bottom - y) - _correction
			} else {
				y = y - (y mod 32) - (bbox_top - y) + _correction
			}
			_vsp = 0;
		} 
		new_sp[0] = _hsp
		new_sp[1] = _vsp
		
		return(new_sp)
}