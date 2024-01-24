function exe_map_generator_show_scale_change(_carry)
{
	
	
	var _maxsize = 512/map_generator.map_x;
	if 512/map_generator.map_y > _maxsize
		{	_maxsize =512/ map_generator.map_y;	};
	
	if _carry[0] == "min"	{	_carry[0] = -_maxsize;	};
	if _carry[0] == "max"	{	_carry[0] = _maxsize;	};
	
	map_generator.show_scale += _carry[0];
	
	map_generator.show_scale = ceil(map_generator.show_scale);
	
	if map_generator.show_scale < 1	{map_generator.show_scale = 1;};
	if map_generator.show_scale > _maxsize	{map_generator.show_scale = _maxsize;};
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}