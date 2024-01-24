function execute_function(_func,_carry,_txt)
{
	var _fexe = 0; // function_executed
	switch(_func)
		{
			case "show_rclick_info":
				mouse_info.txt = _txt;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
				_fexe = 1;	break;
				
			case "exe_turn_dev_menu":	dev_menu_on = !dev_menu_on;reset_current_menu_array = 1;	_fexe = 1;	break;
			case "exe_switch_dev_show_depth_surface":	exe_switch_dev_show_depth_surface(); _fexe = 1;	break;
			case "exe_switch_dev_menu":	exe_switch_dev_menu(_carry);	_fexe = 1;	break;
			case "exe_switch_restricted_show":	click_restricted_show = !click_restricted_show;	_fexe = 1;	break;
			
			case "exe_switch_debug_overlay":	exe_switch_debug_overlay();	_fexe = 1;	break;
			
			case "exe_turn_display_menu":	display_menu_on = !display_menu_on;reset_current_menu_array = 1;	_fexe = 1;	break;
			case "exe_switch_draw_tile_extension":	control_array.draw_tile_extension = !control_array.draw_tile_extension;	reset_current_menu_array = 1;	force_main_map_redraw = 1;	_fexe = 1;	break;
			case "exe_draw_terrain_markers":		control_array.draw_terrain_markers = !control_array.draw_terrain_markers;	reset_current_menu_array = 1;	force_main_map_redraw = 1;	_fexe = 1;	break;
			case "exe_draw_grid":		control_array.draw_grid = !control_array.draw_grid;	reset_current_menu_array = 1;	force_main_map_redraw = 1;	_fexe = 1;	break;
			case "exe_switch_drawing_mode":	exe_switch_drawing_mode(_carry);	_fexe = 1;	break;
			case "exe_draw_tile_climate":		control_array.draw_tile_climate = !control_array.draw_tile_climate;	reset_current_menu_array = 1;	force_main_map_redraw = 1;	_fexe = 1;	break;
			
			case "exe_goto_generate_map_menu":	exe_throw_deleyed_func(_func,_carry,_txt,1,"Wait, generating map!","_wait_ico","center");	_fexe = 1;	break;
			
			case "exe_map_generator_show_scale_change":	exe_map_generator_show_scale_change(_carry);	_fexe = 1;	break;
			case "exe_map_generator_map_size_change":	exe_map_generator_map_size_change(_carry);	_fexe = 1;	break;
			case "exe_map_generator_voronoi_points_change":	exe_map_generator_voronoi_points_change(_carry);	_fexe = 1;	break;
			case "exe_map_generator_mapheight_mean_change":	exe_map_generator_mapheight_mean_change(_carry);	_fexe = 1;	break;
			case "exe_map_generator_noise_level_change":	exe_map_generator_noise_level_change(_carry);	_fexe = 1;	break;
			case "exe_map_generator_expected_water_cover_change":	exe_map_generator_expected_water_cover_change(_carry);	_fexe = 1;	break;
			case "exe_copy_seed_to_clipboard":	exe_copy_seed_to_clipboard();	_fexe = 1;	break;
			case "exe_map_generator_new_random_seed":	exe_map_generator_new_random_seed();	_fexe = 1;	break;
			case "exe_map_generator_expected_cover_change":	exe_map_generator_expected_cover_change(_carry);	_fexe = 1;	break;
			
			case "exe_goto_editor":	exe_goto_editor();	_fexe = 1;	break;
			//case "exe_goto_editor":	exe_throw_deleyed_func(_func,_carry,_txt,1,"Wait, rendering map!","_wait_ico","center");	_fexe = 1;	break;
			
			case "exe_switch_control_array_map_current_name_level":	exe_switch_control_array_map_current_name_level(_carry);	_fexe = 1;	break;
			
		}
	mouse_struct.function_executed = _fexe;
}