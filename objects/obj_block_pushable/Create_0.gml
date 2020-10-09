/// @description Insert description here
// You can write your code in this editor



//variables
hsp = 0;
vsp = 0;
dir = 0;
sp = 1;
tsize = 32;

//counters
moved = false;

//case
state = "idle"

//collisions
layerID = layer_get_id("Collisions");
tiles = layer_tilemap_get_id(layerID);
mp_grid_add_cell(grid, x/32, y/32);

//boolean
locked = false;