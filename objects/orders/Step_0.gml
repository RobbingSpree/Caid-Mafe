
if step2 > 0
	step2--;

if step2 == 0
{
	//integrity check on seat stack
	var cpy = ds_stack_create();
	for (var i=0; i<ds_stack_size(s)+1; i++)
	{
		var tmp = ds_stack_pop(s);
		if instance_exists(tmp)
			ds_stack_push(cpy,tmp);
	}
	ds_stack_clear(s);
	//fill seat stack again
	//chance to shuffle stack
	for (var i=0; i<ds_stack_size(cpy)+1; i++)
	{
		var tmp = ds_stack_pop(cpy);
		ds_stack_push(s,tmp);
	}
	step2--;
	ds_stack_destroy(cpy);
	shuffle_stack(s);
}