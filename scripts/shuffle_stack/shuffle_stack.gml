function shuffle_stack(argument0) {
	var temp_stack = argument0;

	var temp_list = ds_list_create();


	//get the max size of the stack
	var size = ds_stack_size(temp_stack);
	//copy the stack into the list
	for (var i=0; i<size-1; i++)
	{
		var _card = ds_stack_pop(temp_stack);
		ds_list_add(temp_list,_card);
	}
	//shuffle the list
	ds_list_shuffle(temp_list);
	//copy back to the ds_stack
	for (var i=0; i<size-1; i++)
	{
		var _card = ds_list_find_value(temp_list,i);
		ds_stack_push(temp_stack,_card);
	}

	return temp_stack;


}
