/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

draw_self();

if state == "order"
{
	draw_sprite(bub_spr,ani,x,y);
}

if show_stats
{
	draw_set_font(ui_font);
	var str = "Name: " + name;
	var wid = string_width(str);
	var marg = 8;
	var row = 20;
	var x1 = x+sprite_width;
	var y1 = y;
	if wid+marg*2 < 128
		var x2 = x1+128;
	else
		var x2 = x1+wid+marg*2;
	var y2 = y1+156;
	
	nine_slice_draw(nine_slice_spr,x1,y1,x2,y2);
	
	draw_set_color(c_black);
	draw_text(x1+marg,y1+marg,"Name: " + name);
	if takeout
		draw_text(x1+marg,y1+marg+row*1,"takeout");
	else	
		draw_text(x1+marg,y1+marg+row*1,"eat in");
		
	draw_text(x1+marg,y1+marg+row*2,"In Queue: " + string(queue_spot));
	draw_text(x1+marg,y1+marg+row*3,"State: " + state);
	draw_text(x1+marg,y1+marg+row*4,"Delay: " + string(delay));
	draw_set_font(-1);
	draw_set_color(c_white);
}
draw_line(x,y,goto_x,goto_y);
/*
draw_text(x,y,state);
draw_text(x,y+20,focus);
if takeout
	draw_text(x,y+40,"takeout");
else	
	draw_text(x,y+40,"eat in");


//draw_text(x,y,abs(x-goto_x));
//draw_text(x,y+20,abs(y-goto_y));
