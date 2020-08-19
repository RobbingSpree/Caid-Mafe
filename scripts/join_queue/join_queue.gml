function join_queue(argument0) {

	var join = argument0;

	ds_queue_enqueue(counter.queue,join);
	queue_spot = counter.queue_len; //ds_queue_size(counter.queue);
	counter.queue_len++;



}
