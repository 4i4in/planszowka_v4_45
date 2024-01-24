function exe_prepare_surfaces()
{
	surface_set_target(map_surface);
	draw_clear_alpha(c_white,0);
	//draw_text(1000,300,"map surface GLSL_ES_ver2");
	surface_reset_target();
	
	surface_set_target(depth_surface);
	draw_clear_alpha(c_white,0);
	//draw_text(1000,400,"depth surface GLSL_ES_ver2");
	surface_reset_target();
	
	surface_set_target(features_surface);
	draw_clear_alpha(c_white,0);
	//draw_text(1000,300,"feature surface GLSL_ES_ver2");
	surface_reset_target();

	surface_set_target(climate_surface);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
}