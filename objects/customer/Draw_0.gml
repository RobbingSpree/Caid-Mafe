/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_text(x,y,state);
draw_text(x,y+20,focus);
if takeout
	draw_text(x,y+40,"takeout");
else	
	draw_text(x,y+40,"eat in");
	
//draw_text(x,y,abs(x-goto_x));
//draw_text(x,y+20,abs(y-goto_y));
//draw_line(x,y,goto_x,goto_y);