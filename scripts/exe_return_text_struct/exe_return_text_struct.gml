function exe_return_text_struct()
{
	var _tex_struct = 

	{
		_extension_cover :	[
								sprite_get_texture(tile_extension_txt0,0),	
								sprite_get_texture(tile_extension_txt1,0),
								sprite_get_texture(tile_extension_txt2,0),
								sprite_get_texture(tile_extension_txt3,0),
								sprite_get_texture(tile_extension_txt4,0),
								sprite_get_texture(tile_extension_txt5,0),
								sprite_get_texture(tile_extension_txt6,0),
								sprite_get_texture(tile_extension_txt7,0),
								sprite_get_texture(tile_extension_txt8,0),
								sprite_get_texture(tile_extension_txt9,0)
							],
		//peaks
		_terrain_markers_color_peaks :	[
											sprite_get_texture(terrain_marker_peak1,0),
											sprite_get_texture(terrain_marker_peak2,0),
											sprite_get_texture(terrain_marker_peak3,0)
									],
		_terrain_markers_alpha_peaks  :	[
											sprite_get_texture(terrain_marker_peak1_alpha,0),
											sprite_get_texture(terrain_marker_peak2_alpha,0),
											sprite_get_texture(terrain_marker_peak3_alpha,0)
										],		
		_terrain_markers_color_peaks_cold :	[
											sprite_get_texture(terrain_marker_peak1_cold,0),
											sprite_get_texture(terrain_marker_peak2_cold,0),
											sprite_get_texture(terrain_marker_peak3_cold,0)
									],
		_terrain_markers_alpha_peaks_cold  :	[
											sprite_get_texture(terrain_marker_peak1_alpha_cold,0),
											sprite_get_texture(terrain_marker_peak2_alpha_cold,0),
											sprite_get_texture(terrain_marker_peak3_alpha_cold,0)
										],	
		_terrain_markers_color_peaks_hot :	[
											sprite_get_texture(terrain_marker_peak1_hot,0),
											sprite_get_texture(terrain_marker_peak2_hot,0),
											sprite_get_texture(terrain_marker_peak3_hot,0)
									],
		_terrain_markers_alpha_peaks_hot  :	[
											sprite_get_texture(terrain_marker_peak1_alpha_hot,0),
											sprite_get_texture(terrain_marker_peak2_alpha_hot,0),
											sprite_get_texture(terrain_marker_peak3_alpha_hot,0)
										],	
		//peaks end
		
		
		//highland
		_terrain_markers_color_highland :	[
											sprite_get_texture(terrain_marker_highland1,0),
											sprite_get_texture(terrain_marker_highland2,0),
											sprite_get_texture(terrain_marker_highland3,0)
									],
		_terrain_markers_alpha_highland  :	[
											sprite_get_texture(terrain_marker_highland1_alpha,0),
											sprite_get_texture(terrain_marker_highland2_alpha,0),
											sprite_get_texture(terrain_marker_highland3_alpha,0)
										],		
		_terrain_markers_color_highland_cold :	[
											sprite_get_texture(terrain_marker_highland1_cold,0),
											sprite_get_texture(terrain_marker_highland2_cold,0),
											sprite_get_texture(terrain_marker_highland3_cold,0)
									],
		_terrain_markers_alpha_highland_cold  :	[
											sprite_get_texture(terrain_marker_highland1_alpha_cold,0),
											sprite_get_texture(terrain_marker_highland2_alpha_cold,0),
											sprite_get_texture(terrain_marker_highland3_alpha_cold,0)
										],	
		_terrain_markers_color_highland_hot :	[
											sprite_get_texture(terrain_marker_highland1_hot,0),
											sprite_get_texture(terrain_marker_highland2_hot,0),
											sprite_get_texture(terrain_marker_highland3_hot,0)
									],
		_terrain_markers_alpha_highland_hot  :	[
											sprite_get_texture(terrain_marker_highland1_alpha_hot,0),
											sprite_get_texture(terrain_marker_highland2_alpha_hot,0),
											sprite_get_texture(terrain_marker_highland3_alpha_hot,0)
										],	
		//highland end
		
		//lowland
		_terrain_markers_color_lowland :	[
											sprite_get_texture(terrain_marker_lowland1,0),
											sprite_get_texture(terrain_marker_lowland2,0),
											sprite_get_texture(terrain_marker_lowland3,0)
									],
		_terrain_markers_alpha_lowland  :	[
											sprite_get_texture(terrain_marker_lowland1_alpha,0),
											sprite_get_texture(terrain_marker_lowland2_alpha,0),
											sprite_get_texture(terrain_marker_lowland3_alpha,0)
										],		
		_terrain_markers_color_lowland_cold :	[
											sprite_get_texture(terrain_marker_lowland1_cold,0),
											sprite_get_texture(terrain_marker_lowland2_cold,0),
											sprite_get_texture(terrain_marker_lowland3_cold,0)
									],
		_terrain_markers_alpha_lowland_cold  :	[
											sprite_get_texture(terrain_marker_lowland1_alpha_cold,0),
											sprite_get_texture(terrain_marker_lowland2_alpha_cold,0),
											sprite_get_texture(terrain_marker_lowland3_alpha_cold,0)
										],	
		_terrain_markers_color_lowland_hot :	[
											sprite_get_texture(terrain_marker_lowland1_hot,0),
											sprite_get_texture(terrain_marker_lowland2_hot,0),
											sprite_get_texture(terrain_marker_lowland3_hot,0)
									],
		_terrain_markers_alpha_lowland_hot  :	[
											sprite_get_texture(terrain_marker_lowland1_alpha_hot,0),
											sprite_get_texture(terrain_marker_lowland2_alpha_hot,0),
											sprite_get_texture(terrain_marker_lowland3_alpha_hot,0)
										],	
		//lowland end
		
		//shallow_water
		_terrain_markers_color_shallow_water :	[
											sprite_get_texture(terrain_marker_shallow_water1,0),
											sprite_get_texture(terrain_marker_shallow_water2,0),
											sprite_get_texture(terrain_marker_shallow_water3,0)
									],
		_terrain_markers_alpha_shallow_water  :	[
											sprite_get_texture(terrain_marker_shallow_water1_alpha,0),
											sprite_get_texture(terrain_marker_shallow_water2_alpha,0),
											sprite_get_texture(terrain_marker_shallow_water3_alpha,0)
										],		
		_terrain_markers_color_shallow_water_cold :	[
											sprite_get_texture(terrain_marker_shallow_water1_cold,0),
											sprite_get_texture(terrain_marker_shallow_water2_cold,0),
											sprite_get_texture(terrain_marker_shallow_water3_cold,0)
									],
		_terrain_markers_alpha_shallow_water_cold  :	[
											sprite_get_texture(terrain_marker_shallow_water1_alpha_cold,0),
											sprite_get_texture(terrain_marker_shallow_water2_alpha_cold,0),
											sprite_get_texture(terrain_marker_shallow_water3_alpha_cold,0)
										],	
		_terrain_markers_color_shallow_water_hot :	[
											sprite_get_texture(terrain_marker_shallow_water1_hot,0),
											sprite_get_texture(terrain_marker_shallow_water2_hot,0),
											sprite_get_texture(terrain_marker_shallow_water3_hot,0)
									],
		_terrain_markers_alpha_shallow_water_hot  :	[
											sprite_get_texture(terrain_marker_shallow_water1_alpha_hot,0),
											sprite_get_texture(terrain_marker_shallow_water2_alpha_hot,0),
											sprite_get_texture(terrain_marker_shallow_water3_alpha_hot,0)
										],	
		//shallow_water end
		
		//deep_water
		_terrain_markers_color_deep_water :	[
											sprite_get_texture(terrain_marker_deep_water1,0),
											sprite_get_texture(terrain_marker_deep_water2,0),
											sprite_get_texture(terrain_marker_deep_water3,0)
									],
		_terrain_markers_alpha_deep_water  :	[
											sprite_get_texture(terrain_marker_deep_water1_alpha,0),
											sprite_get_texture(terrain_marker_deep_water2_alpha,0),
											sprite_get_texture(terrain_marker_deep_water3_alpha,0)
										],		
		_terrain_markers_color_deep_water_cold :	[
											sprite_get_texture(terrain_marker_deep_water1_cold,0),
											sprite_get_texture(terrain_marker_deep_water2_cold,0),
											sprite_get_texture(terrain_marker_deep_water3_cold,0)
									],
		_terrain_markers_alpha_deep_water_cold  :	[
											sprite_get_texture(terrain_marker_deep_water1_alpha_cold,0),
											sprite_get_texture(terrain_marker_deep_water2_alpha_cold,0),
											sprite_get_texture(terrain_marker_deep_water3_alpha_cold,0)
										],	
		_terrain_markers_color_deep_water_hot :	[
											sprite_get_texture(terrain_marker_deep_water1_hot,0),
											sprite_get_texture(terrain_marker_deep_water2_hot,0),
											sprite_get_texture(terrain_marker_deep_water3_hot,0)
									],
		_terrain_markers_alpha_deep_water_hot  :	[
											sprite_get_texture(terrain_marker_deep_water1_alpha_hot,0),
											sprite_get_texture(terrain_marker_deep_water2_alpha_hot,0),
											sprite_get_texture(terrain_marker_deep_water3_alpha_hot,0)
										],	
		//deep_water end
		
		//ocean_rifts
		_terrain_markers_color_ocean_rifts :	[
											sprite_get_texture(terrain_marker_ocean_rifts1,0),
											sprite_get_texture(terrain_marker_ocean_rifts2,0),
											sprite_get_texture(terrain_marker_ocean_rifts3,0)
									],
		_terrain_markers_alpha_ocean_rifts  :	[
											sprite_get_texture(terrain_marker_ocean_rifts1_alpha,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_alpha,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_alpha,0)
										],		
		_terrain_markers_color_ocean_rifts_cold :	[
											sprite_get_texture(terrain_marker_ocean_rifts1_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_cold,0)
									],
		_terrain_markers_alpha_ocean_rifts_cold  :	[
											sprite_get_texture(terrain_marker_ocean_rifts1_alpha_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_alpha_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_alpha_cold,0)
										],	
		_terrain_markers_color_ocean_rifts_hot :	[
											sprite_get_texture(terrain_marker_ocean_rifts1_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_hot,0)
									],
		_terrain_markers_alpha_ocean_rifts_hot  :	[
											sprite_get_texture(terrain_marker_ocean_rifts1_alpha_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_alpha_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_alpha_hot,0)
										],	
		//ocean_rifts end
		
		
		_tile_base_txt :		sprite_get_texture(tile_base_txt,0),
		
		
		_tile_ground_ocean_rifts1 : sprite_get_texture(ocean_rifts1,0),	//all are 256x256
		_tile_ground_ocean_rifts1_cold : sprite_get_texture(ocean_rifts1_cold,0),	//all are 256x256
		_tile_ground_deep_water1 : sprite_get_texture(deep_water1,0),	//all are 256x256
		_tile_ground_deep_water1_cold : sprite_get_texture(deep_water1_cold,0),	//all are 256x256
		_tile_ground_shallow_water1 : sprite_get_texture(shallow_water1,0),	//all are 256x256
		_tile_ground_shallow_water1_cold : sprite_get_texture(shallow_water1_cold,0),	//all are 256x256
		
		_tile_ground_lowland1 : sprite_get_texture(lowland1,0),	//all are 256x256
		_tile_ground_lowland1_cold : sprite_get_texture(lowland1_cold,0),	//all are 256x256
		_tile_ground_lowland1_hot : sprite_get_texture(lowland1_hot,0),	//all are 256x256
		
		_tile_ground_highland1 : sprite_get_texture(highland1,0),	//all are 256x256
		_tile_ground_highland1_cold : sprite_get_texture(highland1_cold,0),	//all are 256x256
		_tile_ground_highland1_hot : sprite_get_texture(highland1_hot,0),	//all are 256x256
		
		_tile_ground_peaks1 : sprite_get_texture(peaks1,0),	//all are 256x256
		_tile_ground_peaks1_cold : sprite_get_texture(peaks1_cold,0),	//all are 256x256
		_tile_ground_peaks1_hot : sprite_get_texture(peaks1_hot,0),	//all are 256x256
		
		_tile_underground_water_caves1 :	sprite_get_texture(water_caves1,0),	//all are 256x256
		_tile_underground_soft_earth1 :		sprite_get_texture(soft_earth1,0),	//all are 256x256
		_tile_underground_soft_rocks1 :		sprite_get_texture(soft_rocks1,0),	//all are 256x256
		_tile_underground_solid_rocks1 :	sprite_get_texture(solid_rocks1,0),	//all are 256x256
		
		_tile_underdark_magma1 : sprite_get_texture(underdar_magma1,0),	//all are 256x256
		_tile_underdark_granite1 : sprite_get_texture(underdark_granite1,0),	//all are 256x256
		_tile_underdark_obsidian1 : sprite_get_texture(underdark_obsidian1,0),	//all are 256x256
		_tile_underdark_olivine1 : sprite_get_texture(underdark_olivine1,0),	//all are 256x256
		_tile_underdark_organogenic1 : sprite_get_texture(underdark_organogenic1,0),	//all are 256x256
		_tile_underdark_metamorphic1 : sprite_get_texture(underdark_metamorphic1,0),	//all are 256x256
		_tile_underdark_chemic1 : sprite_get_texture(underdar_chemic1,0),	//all are 256x256
		
		_tile_underwater_shelf1 : sprite_get_texture(shelf1,0),	//all are 256x256
		_tile_underwater_open_sea1 : sprite_get_texture(open_sea1,0),	//all are 256x256
		
		_tile_deepths_abbysal_plain1 : sprite_get_texture(abbysal_plain1,0),	//all are 256x256
		_tile_deepths_open_depths1 : sprite_get_texture(open_depths1,0),	//all are 256x256
		
		_tile_water_abbys_trench1 : sprite_get_texture(water_abbys_trench1,0),	//all are 256x256
		
		
		
		_big_sqr_size : tile_base_size*4 *icon_scale,
		_med_sqr_size : tile_base_size *icon_scale,
	}
	
	return(_tex_struct);
}