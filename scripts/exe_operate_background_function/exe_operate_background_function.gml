function exe_operate_background_function()
{
	if deleyed_function.func == ""
		{
			switch(background_function.func)
				{
					case "exe_background_map_tile_render":	exe_background_map_tile_render();
						break;
				}
		}
}