var target = argument0;


if mouse_x > target.x && mouse_x < target.x+target.sprite_width && mouse_y >target.y && mouse_y < target.y+target.sprite_height
	return true;
else
	return false;