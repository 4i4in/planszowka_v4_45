function exe_check_mouse_vs_move_map()
{
	if control_array.move_map > 0
		{
			var _keep_camx = control_array.camx;
			var _keep_camy = control_array.camy;
	
			if mouse_struct.mx < control_array.move_border	{	control_array.camx -= control_array.cam_speed;	};
			if mouse_struct.mx > dgw-control_array.move_border	{	control_array.camx += control_array.cam_speed;	};
			if mouse_struct.my < control_array.move_border	{	control_array.camy -= control_array.cam_speed;	};
			if mouse_struct.my > dgh-control_array.move_border	{	control_array.camy += control_array.cam_speed;	};
			
			if control_array.camx < 0	{	control_array.camx += control_array.map_x * control_array.tile_size;};
			if control_array.camy < 0	{	control_array.camy += control_array.map_y * control_array.tile_size;};
			
			if control_array.camx > control_array.map_x * control_array.tile_size	{	control_array.camx -= control_array.map_x * control_array.tile_size;};
			if control_array.camy > control_array.map_y * control_array.tile_size	{	control_array.camy -= control_array.map_y * control_array.tile_size;};
	
			if control_array.camx != _keep_camx	{	force_main_map_redraw = 1; };
			if control_array.camy != _keep_camy	{	force_main_map_redraw = 1; };
		}
}