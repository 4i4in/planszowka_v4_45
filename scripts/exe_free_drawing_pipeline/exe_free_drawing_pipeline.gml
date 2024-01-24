function exe_free_drawing_pipeline()
{
	surface_free(main_surface);
	
	surface_free(map_surface);
	surface_free(depth_surface);
	surface_free(features_surface);
	surface_free(climate_surface);
	surface_free(base_surface);
	
	surface_free(outline_surface);
	surface_free(temporary_render);
}