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
	}
}

if state == "order" && !done
{
	//state update handled by staff on register job
}

if state == "find_seat" && !done
{
	//movewment
	mp_potential_step(goto_x,goto_y,3,false);
	
	//update state
	if abs(x-goto_x) < 5 && abs(y-goto_y) < 5
	{
		state = "seated";
		done = true;
		countdown = 120;
	}
}

//state machine buffer
if done 
{
	countdown --
	if countdown <- 0
		done = false;
}