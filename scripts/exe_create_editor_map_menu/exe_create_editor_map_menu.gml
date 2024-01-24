function exe_create_editor_map_menu()
{
	var _this_menu = [];
	
	var _menu_xsize = 4;	var _menu_ysize = 6;
	var _xref = 0.5;	var _yref = 0.5;
	
	var _tsize = control_array.tile_size;
	var _map_button_scale = (map_generator.map_x/_tsize) * map_generator.show_scale;
	
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	array_push(_this_menu,_restricted);
	
	
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Map editor"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map editor destription";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = string(map_generator.map_name); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map name";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Level : " + string(control_array.map_current_name_level); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map name";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_switch_control_array_map_current_name_level"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "map name";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_switch_control_array_map_current_name_level"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "map name";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	switch(control_array.map_current_name_level)
		{
			case "air":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_air_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
				
			case "ground":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_ground_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
			
			case "underground":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_underground_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
			
			case "underdark":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_underdark_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
				
			case "underwater":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_underwater_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
				
			case "water_deepths":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_water_deepths_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
				
			case "water_abbys":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_water_abbys_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
				
			case "fairyland":
				_xref = _restricted[0];
				_yref += _button_size[1];
				var _button_size = [_map_button_scale,_map_button_scale];
				var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
				var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
				var _pic = "srf_fairyland_minimap";	var _pic_mo = string(_pic);	var _mouse_over = 0;
				var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
				var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
				array_push(_this_menu,_button);
				break;
		}
	
	return(_this_menu);
}