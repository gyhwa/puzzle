/// @description Insert description here
// You can write your code in this editor
//direction 
destructable = true;

dir = floor(direction/90)

if (dir == 0) {
	x1 = x + 32
	x2 = x + 64
	y1 = y
	y2 = y
} else if (dir == 2) {
	x1 = x - 32
	x2 = x - 64
	y1 = y
	y2 = y
} else if (dir == 1) {
	x1 = x
	x2 = x
	y1 = y - 32
	y2 = y - 64
} else {
	x1 = x
	x2 = x
	y1 = y + 32
	y2 = y + 64
}