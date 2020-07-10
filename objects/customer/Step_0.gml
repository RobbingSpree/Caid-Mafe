/// @description Insert description here
// You can write your code in this editor

depth = -y;
show_stats=true;
image_index = 0;

ani_loop ++
if ani_loop == ani_spd
{
	ani ++;
	ani_loop=0;
}
delay++
/*
if mouse_over(self)
	show_stats=true;
*/

if delay != (delay_period+delay_range)
{
	var perc = distance_to_point(goto_x,goto_y)/room_width*100;
	if perc<5 relitive_spd = 1;
	if perc<20 relitive_spd = 2;
	if perc>=20 relitive_spd = 3;
	
	mp_potential_step(goto_x,goto_y,relitive_spd,false);
}


if state == "enter"
{
	//option to go look at menu first
	join_queue(self);
	queue_spot++ //add extra buffer in queue to help identify customer at head of queue
	state = "queue";
	delay = 0;
	delay_period=1;
	delay_range = 1;
}

if state == "queue" && delay == (delay_period+delay_range)
{
	goto_x=counter.queue_x;
	goto_y=counter.queue_y+(sprite_height+8)*queue_spot;
	
	if ds_queue_head(counter.queue) == self && am_i_close(goto_x,goto_y)
	{
		state = "order";
		queue_spot=0;
		goto_y=counter.queue_y+8;
		delay_period=120
	}
	delay = 1;
	delay_period=30
	delay_range = irandom_range(10,30);
}

if state == "order" && delay == (delay_period+delay_range)
{
	ds_queue_enqueue(orders.o,order);
	ds_queue_enqueue(orders.peeps,self);
	state= "leave_queue";
	delay = 1;
	delay_range = irandom_range(10,30);
}

if state == "leave_queue" //instantly do this logic
{
	//get item behind and update queue_spot
	with customer
	{
		if queue_spot >0
		queue_spot --
	}
	counter.queue_len--
	ds_queue_dequeue(counter.queue)
	goto_x= x+sprite_width+8;
	//move to seat or lounge depending on flag
	if takeout
		find_lounge(self);
	else 
		find_seat(self);
	state = "find_chair";
	delay = 1;
	delay_range = irandom_range(10,30);
}

if state == "find_chair" && delay == (delay_period+delay_range)
{
	//get target lounge
	if am_i_close(goto_x,goto_y)
		state = "wait"
	delay = 1;
	delay_range = irandom_range(10,30);
}

if state == "wait" 
{
	debug -- 
	if debug == 0
		state = "leave";
	delay = 1;
	delay_range = irandom_range(10,30);
}

if state == "eating" && delay == (delay_period+delay_range)
{
	
}

if state == "leave" 
{
	//add chair back into list
	if takeout && focus != noone
	{
		ds_stack_push(orders.l,focus);
		shuffle_stack(orders.l);
		focus = noone;
	}else {
		ds_stack_push(orders.s,focus);
		shuffle_stack(orders.s);
		focus = noone;
	}
	
	goto_x = door.x;
	goto_y = door.y;
	
	if am_i_close(goto_x,goto_y)
		instance_destroy(self);
}

