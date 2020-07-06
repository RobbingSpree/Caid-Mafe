/// @description Insert description here
// You can write your code in this editor

depth = -y;

if state == "enter" && !done
{
	goto_x = counter.queue_x;
	goto_y = counter.queue_y;
	
	
	//movewment
	mp_potential_step(goto_x,goto_y,3,false);
	
	//update state
	if abs(x-goto_x) < 5 && abs(y-goto_y) < 5
	{
		state = "queue";
		done = true;
		countdown = 120;
		join_queue(self);
	}
}

if state == "queue" && !done
{
	if ds_stack_top(counter.queue) == self
	{
		state = "order";
		done = true;
		countdown = 120;
		counter.pay_ready = true;
	}
}

if state == "order" && !done
{
	//state update handled by staff on register job
}

if state == "find_seat" && !done
{
	if takeout
		state= "leave";
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
		countdown = 120;
	}
}

if state == "leave"
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
	if countdown <- 0
		done = false;
}