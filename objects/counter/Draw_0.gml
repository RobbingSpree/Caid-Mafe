/// @description Insert description here
// You can write your code in this editor

draw_self();

var cpy = ds_queue_create();
draw_set_color(c_red);
ds_queue_copy(cpy,queue);
for (var i=0; i<ds_queue_size(queue); i++)
{
	draw_text(room_width/2,room_height/2+i*20,ds_queue_dequeue(cpy));
}
ds_queue_destroy(cpy);
draw_set_color(c_white);