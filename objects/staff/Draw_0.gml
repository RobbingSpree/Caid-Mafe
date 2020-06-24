/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if mouse_over()
	draw_text(x+sprite_width/2,y+sprite_width/2,"X");
else 
	draw_text_ext(x+sprite_width/2,y+sprite_width/2,job,20,sprite_width*0.9);
draw_set_halign(-1);
draw_set_valign(-1);