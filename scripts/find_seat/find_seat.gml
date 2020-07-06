
with argument0
{
	//find empty seat
	var st = noone;
	var cpy = ds_stack_create();
	ds_stack_copy(cpy,orders.s);
	//var int = ds_stack_size(orders.s)-1;
	
	while (st != noone)
	{
		st = ds_stack_pop(cpy);
		
		if ds_stack_size(cpy) < 1
		{
			state = "leave";
			return;
		}
	}	
		
	ds_stack_destroy(cpy);
	
	//set empty seat as destination
	goto_x = st.x=32;
	goto_y = st.y-32;
	
	//update state of customer
	state = "find_seat";
	focus = st.index;
}