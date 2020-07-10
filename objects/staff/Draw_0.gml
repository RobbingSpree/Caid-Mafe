/// @description Insert description here
// You can write your code in this editor
draw_self();

if hover
{
	draw_set_font(ui_font);
	//setup wodth
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
	draw_text(x1+marg,y1+marg+row*1,"Job: " + job);
	
	draw_set_font(-1);
	draw_set_color(c_white);
}