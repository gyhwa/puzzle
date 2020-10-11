/// @description Insert description here
// You can write your code in this editor

//variables
hsp = 0;
vsp = 0;
sp = 1;
//properties
tsize = 32;


//dash
dash = false;
can_dash = false;

//states
dir = 0;
state = "idle";
locked = false;

//collisions
layerID = layer_get_id("Collisions");
tiles = layer_tilemap_get_id(layerID);

//counts
global.turn = 0;
global.actual_turn = 0;
