/// @description Insert description here
depth = -y;

hover = false;
if mouse_over(self) 
{
	hover = true;
	if mouse_check_button_pressed(mb_left)
	{
		if controller.grabbing == noone
		{
			controller.grabbing = self
			if state == "working" && work_area != noone
			{
				//update work area to not be flagged as occupied
				work_area.staffed_by = noone;
				work_area = noone;
			}
			state = "grabbed";
		}
	}
}

if state == "grabbed"
{
	x = mouse_x - sprite_width /2;
	y = mouse_y - sprite_height/2;
	
	if mouse_check_button_released(mb_left)
	{
		state = "idle";
		controller.grabbing = noone;
		//x = x >> 6;
		//y = y >> 6;
		if position_meeting(mouse_x,mouse_y,drop_area)
		{
			var area = instance_place(x,y,drop_area);
			job = area.job;
			x=area.x;
			y=area.y;
			state = "working";
			take_job(area,self);
		}
	}
}