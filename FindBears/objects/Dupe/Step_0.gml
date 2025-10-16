if(OGame.turn == 1)
{
	if(keyboard_check_pressed(vk_right))
	{
		x+=8;
	}
	if(keyboard_check_pressed(vk_left))
	{
		x-=8;
	}
	if(keyboard_check_pressed(vk_up))
	{
		y-=8;
	}
	if(keyboard_check_pressed(vk_down))
	{
		y+=8;
	}
	if(keyboard_check_pressed(vk_space) && !OGame.justSwitched)
	{
		instance_create_layer(x,y,"Placed",Dupeplaced);
		OGame.turn = 0;
		OGame.justSwitched = true;
		OGame.alarm[0]=10;
	}
}