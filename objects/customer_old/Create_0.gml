/*
states:
enter
queue
order
find_seat
seated
consume
chatting
paying
lurking
leaving
*/

/*
food types:
sweet
savory
bread
coffee
nothing
everything
*/

image_speed = 0;
state = "enter";
order = "Food";

gender = "";
if irandom(1)
	gender = "male";
else
	gender = "female";
	
name = "";
name = make_up_name(gender);


show_stats=false;
takeout=false;//irandom(1);
queue_spot = -1;
move_up=false;
focus = noone;
goto_x = x;
goto_y = y;
done = false;
countdown = 0;
lost = 300;
join_queue(self);

ani = 0;
ani_spd = 5;
ani_loop = 0;