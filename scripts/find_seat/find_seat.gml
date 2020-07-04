
with argument0
{
	//find empty seat
	var st = noone;
	var cpy = ds_stack_create();
	ds_stack_copy(cpy,orders.s);
	var int = ds_stack_size(orders.s)-1;
	
	for (var i=1; i<irandom(int); i++)
	{
		st = ds_stack_pop(cpy);
	}
	ds_stack_destroy(cpy);
	
	//set empty seat as destination
	goto_x = st.x=32;
	goto_y = st.y-32;
	
	//update state of customer
	state = "find_seat";
	focus = st.index;
}