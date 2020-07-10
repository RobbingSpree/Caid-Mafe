/// @description Insert description here
// You can write your code in this editor

o = ds_queue_create(); //list of current orders
peeps = ds_queue_create(); //list of who ordered the item in the orders queue 
s = ds_stack_create(); //list of seats at tables
l = ds_stack_create(); //list of lounge chairs for waiting customers

step2 =2; //flag to wait until all seats have settled before shuffling their order