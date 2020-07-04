/// @description Insert description here
// You can write your code in this editor

if setup == true
{
	var jump = 128;
	var nx=x+lengthdir_x(jump,dir);
	var ny=y+lengthdir_y(jump,dir);
	
	if position_meeting(nx,ny,wall) || position_meeting(nx,ny,seat)
		instance_destroy(self);
	
	setup = false;
	x=nx;
	y=ny;
	
	index = ds_stack_size(orders.s);
	ds_stack_push(orders.s,self);
}