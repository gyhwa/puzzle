/// @description Insert description here
// Option 1: Shift to push. Otherwise the box does not move.
if (dir == 0) {
	x = other.x - other.sprite_width
} 
if (dir == 2) {
	x = other.x + other.sprite_width
}

if (dir == 3) {
	y = other.y - other.sprite_height
} 
if (dir == 1) {
	y = other.y + other.sprite_height
}

state = "push"
// Option 2: push the box no matter what

if (dir_touch(dir, other)) {
	other.dir = dir
	other.state = "move"
}
