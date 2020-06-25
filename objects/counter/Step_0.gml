/// @description Insert description here
// You can write your code in this editor

if pay_ready == true && register.staffed_by != noone
{
	var payee = ds_stack_pop(queue);
	//need to deduct cost of item from payee's money and add to till
	ds_stack_push(orders.o,payee.order);
	find_seat(payee);
	pay_ready = false;
}