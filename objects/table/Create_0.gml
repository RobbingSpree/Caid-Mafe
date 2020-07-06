/// @description Insert description here
// You can write your code in this editor

event_inherited();

for (var i=0; i<2; i++)
{
	var seat_ = instance_create_layer(x,y,"Instances",seat);
	seat_.tab = self;
	seat_.dir = 90+180*i; //amgle from the table the chair is located
	seat_.setup = true;
}
seated = 0;

//seats_x = [x+sprite_width,x,x-sprite_width,x];
//seats_y = [y,y-sprite_height,y,y+sprite_height];
