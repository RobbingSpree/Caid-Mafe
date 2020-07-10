/// @description Insert description here
// You can write your code in this editor

depth = -y;
show_stats=true;
image_index = 0;

ani_loop ++
if ani_loop == ani_spd
	ani ++;

if mouse_over(self)
	show_stats=true;

if state == "enter" && !done
{
	goto_x = counter.queue_x;
	goto_y = counter.queue_y+ds_queue_size(counter.queue)*(sprite_height+8);
	
	/*
	//movewment
	mp_potential_step(goto_x,goto_y,3,false);
	*/
	//update state
	//if abs(x-goto_x) < 5 && abs(y-goto_y) < 5
	{
		state = "queue";
		done = true;
		countdown = 0;
		//join_queue(self);
	}
}

if state == "queue" && !done
{
	if abs(y-goto_y) <= 5
	{
		//if at front of queue
		if ds_queue_head(counter.queue) == self
		{
			state = "order";
			done = true;
			countdown = 60;
			//counter.pay_ready = true;
		}
		//not at front of queue
		if move_up
		{
			goto_y = counter.queue_y+queue_spot*(sprite_height+8);
			move_up = false;
		}
	} else {
		mp_potential_step(goto_x,goto_y,3,false);
	}
}

if state == "order" 
{
	done = false;
	image_index = 1;
	countdown --;
	if countdown <=0
		counter.pay_ready = true;
	
	//state update handled by staff on register job
}

if state == "find_seat" && !done
{
	if takeout
	{
		state= "leave";
		done = true;
		countdown = 50;
	}
	
	//movewment
	mp_potential_step(goto_x,goto_y,3,false);
	lost --;
	
	if lost == 0
	{
		find_seat(self);
		lost = 100;
	}
	//update state
	if abs(x-goto_x) < 5 && abs(y-goto_y) < 5
	{
		state = "seated";
		done = true;
		countdown = 500;
	}
}

if state == "seated" && !done
{
	state = "leave";
		done = true;
		countdown = 50;
}

if state == "leave" && !done
{
	goto_x = door.x;
	goto_y = door.y;
	
	//movewment
	mp_potential_step(goto_x,goto_y,3,false);
	
	if abs(x-goto_x) < 5 && abs(y-goto_y) < 5
	{
		instance_destroy(self);
	}
}

//state machine buffer
if done 
{
	countdown --
	if countdown <= 0
		done = false;
}