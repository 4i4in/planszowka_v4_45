function exe_ground_to_water_abbys_01()
{
	var _temporary_water_abbys = variable_clone(game_map.ground);
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _ground_tile = game_map.ground[_x1][_y1];
					
					var _name = "";
					var _color = c_black;
					var _teritory_name = "";
					var _zref =  height_base + 7*height_step;
					
					switch(_ground_tile.base_name)
						{
							case "ocean_rifts":
								_name = "abbys_trench";
								_color = map_generator.legal_water_abbys_colors[0];
								_teritory_name = "trench of " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							
						}
					_temporary_water_abbys[_x1][_y1] = 
						{
							base_name :				variable_clone(_name),
							base_color :			variable_clone(_color),
							naming_1st_teritory :	variable_clone(_teritory_name),
							zref :					variable_clone(_zref),
						}
				}
		}
	game_map.water_abbys = variable_clone(_temporary_water_abbys);
	
	water_abbys_minimap = draw_temporary_surface03(water_abbys_minimap,_temporary_water_abbys);
}