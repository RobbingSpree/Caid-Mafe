/// @description Insert description here
// You can write your code in this editor

state = "enter";

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

order = "Food";
funds = 20;
enjoyment = 50;
staff_likes = [];
food_likes = [];
gender = "";
if irandom(1)
	gender = "male";
else
	gender = "female";
name = "";
name = make_up_name(gender);
show_stats=false;
takeout=irandom(1);
queue_spot = -1;
focus = noone;
goto_x = x;
goto_y = y;
done = false;
countdown = 0;
lost = 300;