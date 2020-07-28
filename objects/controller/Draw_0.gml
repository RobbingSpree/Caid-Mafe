/// @description Insert description here
// You can write your code in this editor
var clock_x=64;
var clock_y=64;
draw_sprite(clock_spr,0,clock_x,clock_y);
draw_sprite_ext(clock_spr,1,clock_x,clock_y,1,1,90-(minute*6),c_white,1);
draw_sprite_ext(clock_spr,2,clock_x,clock_y,1,1,90-(hour*30),c_white,1);
