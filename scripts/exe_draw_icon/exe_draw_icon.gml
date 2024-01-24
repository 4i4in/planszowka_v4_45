function exe_draw_icon(_xx1,_yy1,_pic)
{
	var _pic_found = 0;
	switch(_pic)
		{
				
			case "_32x32_button":
				draw_sprite_ext(_32x32_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_button_mo":
				draw_sprite_ext(_32x32_button_mo,game_time mod sprite_get_number(_32x32_button_mo),_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_32x64_back":
				draw_sprite_ext(_32x64_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_mo":
				draw_sprite_ext(_32x64_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x64_back_green":
				draw_sprite_ext(_32x64_back_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_green_mo":
				draw_sprite_ext(_32x64_back_green_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x64_back_red":
				draw_sprite_ext(_32x64_back_red,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_red_mo":
				draw_sprite_ext(_32x64_back_red_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x128_back":
				draw_sprite_ext(_32x128_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x128_back_mo":
				draw_sprite_ext(_32x128_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x160_back":
				draw_sprite_ext(_32x160_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x160_back_mo":
				draw_sprite_ext(_32x160_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x256_back":
				draw_sprite_ext(_32x256_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x256_back_mo":
				draw_sprite_ext(_32x256_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x256_back":
				draw_sprite_ext(_64x256_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x256_back_mo":
				draw_sprite_ext(_64x256_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "srf_height_map":
				if surface_exists(height_map)
					{
						draw_surface_ext(height_map,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_height_map_mo":
				if surface_exists(height_map)
					{
						draw_surface_tiled_ext(height_map,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			
			case "srf_air_minimap":
				if surface_exists(air_minimap)
					{
						draw_surface_ext(air_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_air_minimap_mo":
				if surface_exists(air_minimap)
					{
						draw_surface_tiled_ext(air_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
				
			case "srf_ground_minimap":
				if surface_exists(ground_minimap)
					{
						draw_surface_ext(ground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_ground_minimap_mo":
				if surface_exists(ground_minimap)
					{
						draw_surface_tiled_ext(ground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
				
			case "srf_underground_minimap":
				if surface_exists(underground_minimap)
					{
						draw_surface_ext(underground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underground_minimap_mo":
				if surface_exists(underground_minimap)
					{
						draw_surface_tiled_ext(underground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
				
			case "srf_underdark_minimap":
				if surface_exists(underdark_minimap)
					{
						draw_surface_ext(underdark_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underdark_minimap_mo":
				if surface_exists(underdark_minimap)
					{
						draw_surface_tiled_ext(underdark_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
				
			case "srf_underwater_minimap":
				if surface_exists(underwater_minimap)
					{
						draw_surface_ext(underwater_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underwater_minimap_mo":
				if surface_exists(underwater_minimap)
					{
						draw_surface_tiled_ext(underwater_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
				
			case "srf_water_deepths_minimap":
				if surface_exists(water_deepths_minimap)
					{
						draw_surface_ext(water_deepths_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_water_deepths_minimap_mo":
				if surface_exists(water_deepths_minimap)
					{
						draw_surface_tiled_ext(water_deepths_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
				
			case "srf_water_abbys_minimap":
				if surface_exists(water_abbys_minimap)
					{
						draw_surface_ext(water_abbys_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_water_abbys_minimap_mo":
				if surface_exists(water_abbys_minimap)
					{
						draw_surface_tiled_ext(water_abbys_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			
			case "srf_fairyland_minimap":
				if surface_exists(fairyland_minimap)
					{
						draw_surface_ext(fairyland_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_fairyland_minimap_mo":
				if surface_exists(fairyland_minimap)
					{
						draw_surface_tiled_ext(fairyland_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			
		}
		
	if _pic_found < 1
		{
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			
			draw_sprite_ext(_no_pic,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
			draw_set_color(c_red);
			draw_text(_xx1,_yy1,"no_picture : \n" + string(_pic));
			draw_set_color(c_white);
			
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
		}
}