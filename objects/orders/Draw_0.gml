/// @description Insert description here
// You can write your code in this editor

//x=736
//y=128

//draw to seats
var cpy = ds_stack_create();
ds_stack_copy(cpy,s);
var size = ds_stack_size(cpy);
for (var i=0; i<size; i++)
{
	var temp = ds_stack_pop(cpy);
	if temp != noone
		draw_line(736,128,temp.x,temp.y);
}
ds_stack_destroy(cpy)

//draw to lounges
cpy = ds_stack_create();
ds_stack_copy(cpy,l);
size = ds_stack_size(cpy);
for (var i=0; i<size; i++)
{
	var temp = ds_stack_pop(cpy);
	if temp != noone
		draw_line(736,128,temp.x,temp.y);
}
ds_stack_destroy(cpy)