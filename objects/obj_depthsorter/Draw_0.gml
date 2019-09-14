/// @description Insert description here
// Resize Grid
var _dgrid = ds_depthgrid_;
var _inst_num = instance_number(obj_depth_parent);
ds_grid_resize(_dgrid, 2, _inst_num);

//Add instance number to grid
var _yy = 0; with(obj_depth_parent){
	_dgrid[# 0, _yy] = id;
	_dgrid[# 1, _yy] = y;
	_yy++;
}

//Sort grid in ascending order
ds_grid_sort(_dgrid,1,true);

//Loop through the grid and draw all the instances
_yy =0; repeat(_inst_num){
	var _inst = _dgrid[# 0, _yy];
	//get instance to draw itself
	with(_inst){
		event_perform(ev_draw,0);
	}
	_yy++;	
}