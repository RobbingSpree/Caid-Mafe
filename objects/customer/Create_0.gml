image_speed = 0;
state = "enter";
order = "Food";

gender = "";
name = "Test Name";

show_stats=true;
takeout=false;//irandom(1);
queue_spot = -1;

delay = 1;
delay_period = 60;
delay_range = irandom_range(10,30);

focus = noone;
goto_x = x;
goto_y = y;

ani = 0;
ani_spd = 5;
ani_loop = 0;

//self destruct if no seats and lounges avaliable
if instance_number(customer) > 6
	instance_destroy(self);
debug = 200;