function exe_create_vbuffers()
{
	exe_vbuff_tile_64x64_flat();//vbuff_tile_64x64_flat
	exe_vbuff_tile();		//vbuff_tile
	exe_vbuff_32x32();		//vbuff_32x32
	
	//terrain markers
	exe_vbuff_64x64_up_down();	//vbuff_32x32_up
	exe_vbuff_64x64_flat();	//vbuff_32x32_up
	
	exe_vbuff_dgw_dgh();	//vbuff_dgw_dgh
	
}