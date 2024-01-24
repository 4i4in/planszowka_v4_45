function exe_add_terrain_markers_to(_map,_terrain_level)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_struct = _map[_x1][_y1];
					_local_struct.terrain_markers = [];
					var _terrain_markers_array = [];
					
					switch(_terrain_level)
						{
							case "ground":
								_terrain_markers_array = exe_adapt_terrain_markers_ground(_local_struct,_x1,_y1,_terrain_markers_array,_map);
								break;
						}
					
					_local_struct.terrain_markers = _terrain_markers_array;
				}
		}
	return(_map);
}