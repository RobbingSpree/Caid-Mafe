/// @description Insert description here
// You can write your code in this editor

draw_self();

if show_stats
{
	draw_set_font(ui_font);
	var str = "Name: " + name;
	var wid = string_width(str);
	var marg = 8;
	var row = 40;
	var x1 = x+sprite_width;
	var y1 = y;
	if wid+marg*2 < 128
		var x2 = x1+128;
	else
		var x2 = x1+wid+marg*2;
	var y2 = y1+128;
	
	nine_slice_draw(nine_slice_spr,x1,y1,x2,y2);
	
	draw_set_color(c_black);
	draw_text(x1+marg,y1+marg,"Name: " + name);
	if takeout
		draw_text(x1+marg,y1+marg+row*1,"takeout");
	else	
		draw_text(x1+marg,y1+marg+row*1,"eat in");
	draw_set_font(-1);
	draw_set_color(c_white);
}

/*
draw_text(x,y,state);
draw_text(x,y+20,focus);
if takeout
	draw_text(x,y+40,"takeout");
else	
	draw_text(x,y+40,"eat in");


//draw_text(x,y,abs(x-goto_x));
//draw_text(x,y+20,abs(y-goto_y));
//draw_line(x,y,goto_x,goto_y);