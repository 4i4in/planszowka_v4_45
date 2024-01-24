function exe_goto_generate_map_menu(_carry)
{
	map_generator.split_array = [];
	control_array.current_menu_array = [];
	control_array.current_menu = "generate_map_menu";
	
	if _carry[0] == "reset_all"	
		{
			game_map = exe_return_map_struct();//reset
			map_generator.height_map = [];
			map_generator.part_map = [];
		}
	if _carry[0] == "reset_part_map"	
		{
			game_map =	exe_return_map_struct();//reset
			map_generator.part_map = [];
		}
	
	//creating new map
	exe_map_generator_show_scale_change([0]);
	
	if array_length(map_generator.height_map) < 1	//model of generating height map with base naming
		{
			switch(map_generator.current_generator_step_0) 
				{
					case "exe_voronoi_map_gen_01":
						exe_map_generator_voronoi_points_change([0]);
						exe_voronoi_map_gen_01();
						break;
				}
		}
	exe_adapt_water_cover_level_to_expected();
	map_generator.water_cover = exe_check_prcnt_under(map_generator.height_map,map_generator.mapheight_mean);
	
	if array_length(map_generator.part_map) < 1	//model of generating ground map from height map
		{
			switch(map_generator.current_generator_step_1)
				{
					case "exe_hm_to_terrain_voronoi_01":
						exe_hm_to_terrain_voronoi_01(map_generator.height_map);
						exe_perform_wind_on_ground();
						exe_perform_climate_on_ground();
						exe_perform_humidity_on_ground();
						
						exe_perform_description_ground();
						
						//game_map.ground = exe_add_terrain_parts_to(game_map.ground);
						game_map.ground = exe_add_terrain_markers_to(game_map.ground,"ground");
						break;
				}
		}
		
	if array_length(game_map.ground) > 1	//model of generating underground map base on ground map
		{
			switch(map_generator.current_generator_step_2underground)
				{
					case "exe_ground_to_underground_01":
						exe_ground_to_underground_01();
						game_map.underground = exe_add_terrain_parts_to(game_map.underground);
						break;
				}
		}
		
	if array_length(game_map.underground) > 1	&&	array_length(game_map.ground) > 1	
		{	//model of generating underdark map base on ground map and underground map
			switch(map_generator.current_generator_step_3underdark)
				{
					case "exe_ground_and_underground_to_underdark_01":
						exe_ground_and_underground_to_underdark_01();
						game_map.underdark = exe_add_terrain_parts_to(game_map.underdark);
						break;
				}
		}
		
	if array_length(game_map.ground) > 1
		{	//model of generating underdark map base on ground map and underground map
			switch(map_generator.current_generator_step_4underwater)
				{
					case "exe_ground_to_underwater_01":
						exe_ground_to_underwater_01();
						game_map.underwater = exe_add_terrain_parts_to(game_map.underwater);
						break;
				}
		}
		
	if array_length(game_map.ground) > 1
		{	//model of generating underdark map base on ground map and underground map
			switch(map_generator.current_generator_step_5water_deepths)
				{
					case "exe_ground_to_water_deepths_01":
						exe_ground_to_water_deepths_01();
						game_map.water_deepths = exe_add_terrain_parts_to(game_map.water_deepths);
						break;
				}
		}
		
	if array_length(game_map.ground) > 1
		{	//model of generating underdark map base on ground map and underground map
			switch(map_generator.current_generator_step_6water_abbys)
				{
					case "exe_ground_to_water_abbys_01":
						exe_ground_to_water_abbys_01();
						game_map.water_abbys = exe_add_terrain_parts_to(game_map.water_abbys);
						break;
				}
		}
}