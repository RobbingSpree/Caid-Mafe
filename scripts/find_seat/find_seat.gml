
with argument0
{
	//find empty seat
	var st = instance_find(seat, irandom(instance_number(seat) - 1));
	//set empty seat as destination
	goto_x = st.x=32;
	goto_y = st.y-32;
	
	//update state of customer
	state = "find_seat";
}