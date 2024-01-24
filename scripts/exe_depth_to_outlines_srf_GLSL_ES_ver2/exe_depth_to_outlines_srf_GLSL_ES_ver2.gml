function exe_depth_to_outlines_srf_GLSL_ES_ver2()
{
	if !surface_exists(outline_surface)	{	outline_surface = surface_create(dgw,dgh);	}
	
	surface_set_target(outline_surface);
	draw_clear_alpha(c_white,0);
	
	//draw_text(1000,100,"outline surface");
	//draw_text(1000,130,string(control_array.map_current_name_level));
	
	switch(control_array.map_current_name_level)
		{
			case "air":	
				break;
								
			case "ground":	exe_draw_outlines_ground_GLSL_ES_ver2();
				break;
								
			case "underground":
				break;
								
			case "underdark":
				break;
								
			case "underwater":
				break;
								
			case "water_deepths":
				break;
								
			case "water_abbys":
				break;
								
			case "fairyland":
				break;
		}
	
	
	surface_reset_target();
	matrix_set(matrix_world, matrix_build_identity());
	
}