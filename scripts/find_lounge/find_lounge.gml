
with argument0
{
	//find empty seat
	var st = noone;
	cpy = orders.l;
	
	while (st == noone)
	{
		st = ds_stack_pop(cpy);
	}	
	//set empty seat as destination
	goto_x = st.x-32;
	goto_y = st.y-32;
	focus = st;
}