function exe_describe_ground(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					var _txt = "";
					
					//temperature
					if		_tile.climate[0]	< control_array.climate[0]	{_txt = "cold";};
					else if _tile.climate[0]	< control_array.climate[1]	{_txt = "temperate";};
					else													{_txt = "hot";};
					array_push(_tile.terrain_description,_txt);
					
					//humidity
					if		_tile.climate[1]	< 0							{_txt = "arid";};
					else if _tile.climate[1]	< control_array.climate[0]	{_txt = "dry";};
					else if _tile.climate[1]	< control_array.climate[2]	{_txt = "moderate ";};
					else if _tile.climate[1]	< 1							{_txt = "humid";};
					else													{_txt = "wet";};
					array_push(_tile.terrain_description,_txt);
					if		_tile.climate[1]	> 4							{_txt = "water_source";	array_push(_tile.terrain_description,_txt);};
					
					
					//humidity
					if		_tile.wind[1]	< 1								{_txt = "still";};
					else if _tile.wind[1]	< 2								{_txt = "breezy";};
					else if _tile.wind[1]	< 3								{_txt = "windy";};
					else if _tile.wind[1]	< 4								{_txt = "gusty";};
					else													{_txt = "blustery";};
					array_push(_tile.terrain_description,_txt);
				}		
		}
		
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					
					var _cold = 0;	var _temperate = 0;	var _hot = 0;
					var _arid = 0;	var _dry = 0;	var _moderate = 0;	var _humid = 0;	var _wet = 0;
					var _still = 0;	var _breezy = 0;	var _windy = 0;	var _gusty = 0;	var _blustery = 0;
					var _water_source = 0;
					for(var _ii = 0; _ii < array_length(_tile.terrain_description); _ii++)
						{
							switch(_tile.terrain_description[_ii])
								{
									case "cold":			_cold = 1;	break;
									case "temperate":		_temperate = 1;	break;
									case "hot":				_hot = 1;	break;
									
									case "arid":			_arid = 1;	break;
									case "dry":				_dry = 1;	break;
									case "moderate":		_moderate = 1;	break;
									case "humid":			_humid = 1;	break;
									case "wet":				_wet = 1;	break;
									
									case "still":			_still = 1;	break;
									case "breezy":			_breezy = 1;	break;
									case "windy":			_windy = 1;	break;
									case "gusty":			_gusty = 1;	break;
									case "blustery":		_blustery = 1;	break;
									
									case "water_source":		_water_source = 1;	break;
								}
						}
					switch(_tile.base_name)
						{
							case "peaks":
								if _water_source > 1	{	array_push(_tile.terrain_description,"headwaters")	};
								if _arid > 0	
									{
										if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"clear_skies");
												array_push(_tile.terrain_description,"sandstorms");
											};
										if _hot > 0	&&	_still > 0
											{
												array_push(_tile.terrain_description,"clear_skies");
												array_push(_tile.terrain_description,"stable_temperatures");
												array_push(_tile.terrain_description,"barren_rocks");
											};
										if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"icestorms");
												array_push(_tile.terrain_description,"freezing_winds");
												array_push(_tile.terrain_description,"avalanche");
												array_push(_tile.terrain_description,"eroded_rocks");
												array_push(_tile.terrain_description,"extreeme_climbing");
											};
										if _cold > 0	&&	_still > 0
											{
												array_push(_tile.terrain_description,"clear_skies");
												array_push(_tile.terrain_description,"quiet");
												array_push(_tile.terrain_description,"natural_ice_habitats");
											};
									}
								if _dry > 0	
									{
										if _hot > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"barren_rocks");
												array_push(_tile.terrain_description,"hot_caves");
											};
										if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"eroded_rocks");
											};
											
										if _temperate > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"barren_rocks");
											}
										if _temperate > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"eroded_rocks");
												array_push(_tile.terrain_description,"tundra");
											}
											
										if _cold > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"natural_ice_habitats");
												array_push(_tile.terrain_description,"tundra");
											};
										if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"freezing_winds");
											};
									};
								break;
							case "highland":
								if _water_source > 1	{	array_push(_tile.terrain_description,"headwaters")	};
								if _arid > 0	
									{
										array_push(_tile.terrain_description,"barren");
										if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"eroded_rocks");
											};
										if _hot > 0	&&	_still > 0
											{
												array_push(_tile.terrain_description,"intense_heat");
												array_push(_tile.terrain_description,"hot_caves");
											};
										if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"freezing_winds");
												array_push(_tile.terrain_description,"fragile_ice_formations");
											};
										if _cold > 0	&&	_still > 0
											{
												array_push(_tile.terrain_description,"clear_skies");
												array_push(_tile.terrain_description,"natural_ice_habitats");
											};
									}
								if _dry > 0	
									{
										array_push(_tile.terrain_description,"barren");
										if _hot > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"eroded_rocks");
											};
										if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"steppe");
											};
											
										if _temperate > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"prairie");
											}
										if _temperate > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"steppe");
											}
											
										if _cold > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"taiga");
											};
										if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"tundra");
											};
									};
								break;
							case "lowland":
								if _water_source > 1	{	array_push(_tile.terrain_description,"headwaters")	};
								if _arid > 0	
									{
										array_push(_tile.terrain_description,"desert");
										if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"sandstorms");
											};
										if _hot > 0	&&	_still > 0
											{
												array_push(_tile.terrain_description,"intense_heat");
											};
										if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"freezing_winds");
											};
										if _cold > 0	&&	_still > 0
											{
												array_push(_tile.terrain_description,"clear_skies");
											};
										
									};
								if _dry > 0	
									{
										if _hot > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"savanna");
											};
										if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"barren");
												array_push(_tile.terrain_description,"steppe");
											};
											
										if _temperate > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"prairie");
											}
										if _temperate > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"steppe");
											}
											
										if _cold > 0	&&	(_still > 0	||	_breezy > 0)
											{
												array_push(_tile.terrain_description,"taiga");
											};
										if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
											{
												array_push(_tile.terrain_description,"tundra");
											};
									};
								break;
							case "shallow_water":
								break;
							case "deep_water":
								break;
							case "ocean_rifts":
								break;
						}
				}
		}
					
	return(_map);
}