function find_seat(argument0) {

	with argument0
	{
		//find empty seat
		var st = noone;
		cpy = orders.s;
	
		while (st == noone)
		{
			if ds_stack_size(cpy) == 0
			{
				find_lounge(argument0);
				takeout = true;
				return;
			} else 
				st = ds_stack_pop(cpy);
		}	
		//set empty seat as destination
		goto_x = st.x-32;
		goto_y = st.y-32;
		focus = st;
	}


}
