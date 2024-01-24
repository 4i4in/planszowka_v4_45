function exe_rclick_tile_to_string_editor(_xx1,_yy1)
{
	var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
	var _string = "x: " + string(_xx1) + " | y: " + string(_yy1) +  " | z: " + string(_tile.zref) + "\n";
	_string += "terrain : " + string(_tile.base_name) + " | region : " + string(_tile.naming_1st_teritory)  + "\n";
	_string += "description  : " + string(_tile.terrain_description) + "\n";
	_string += "climate  : " + string(_tile.climate) + "\n";
	_string += "wind dir  : " + string(_tile.wind[0]) + " | magnitude : " + string(_tile.wind[1]) + "\n";
	_string += "terrain_extensions : " + string(array_length(_tile.terrain_extensions)) + "\n";
	_string += "terrain_markers  : " + string(array_length(_tile.terrain_markers)) + "\n";
	_string += "zref  : " + string(_tile.zref) + "\n";
	//clipboard_set_text(_tile);
	return(_string);
}