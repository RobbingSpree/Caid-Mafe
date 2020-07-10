/// @description Insert description here
// You can write your code in this editor

if pay_ready == true && register.staffed_by != noone
{
	var payee = ds_queue_dequeue(queue);
	//need to deduct cost of item from payee's money and add to till
	ds_queue_enqueue(orders.o,payee.order);
	find_seat(payee);
	queue_len--
	with customer
	{
		if queue_spot > -1
			queue_spot--;
		countdown = 120;
		move_up = true;
	}
	payee.move_up=false;
	pay_ready = false;
}