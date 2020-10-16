/// @description Insert description here
// You can write your code in this editor
//draw_text(10,10, "state: " + string(obj_player.state))
//draw_text(10,20, "countable: " + string(instance_number(obj_block_pushable)))
//		if (instance_exists(obj_block_pushable)) {
//draw_text(10,20, "box direction: " + string(obj_block_pushable.dir))
//		}
//draw_text(10,20, "block: " + string(obj_block_spawn.block))
//draw_text(10,20, "cooldown: " + string(obj_player.dash_cooldown))
//draw_text(10,30, "lives: " + string(lives))

//draw_text(10,10,"turn:" + string(global.turn))
//draw_text(10,25,"prev turn:" + string(obj_enemy_common.prev_turn))
//draw_text(10,25,"room:" + string(global.rm))

//draw_text(10,10,"x:" + string(obj_player.x))
//draw_text(10,25, "y:" + string(obj_player.y))
draw_text(10,25, "turn:" + string(global.turn))
draw_text(10,10,"turn:" + string(array_length_1d(obj_player.x_saved)))