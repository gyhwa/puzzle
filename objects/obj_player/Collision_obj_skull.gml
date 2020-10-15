/// @description Insert description here
// You can write your code in this editor

locked = true;
state = "death";

animation -= 1;
image_alpha -= 0.002

if (sprite_index == asset_get_index("spr_player_death" + string(dir))&& animation <= 0) {
	room_restart();
}