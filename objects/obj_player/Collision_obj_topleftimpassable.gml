/// @description Insert description here
// You can write your code in this editor
if (other.passable = false) {
	if (dir == 0) {
		x = other.x - sprite_width/2
	} else if (dir == 2) {
		x = other.x + other.sprite_width + sprite_width/2
	}

	if (dir == 3) {
		y = other.y - sprite_height/2
	} else if (dir == 1) {
		y = other.y + other.sprite_height + sprite_height/2
	}
}