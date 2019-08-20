/// @description Insert description here

if(ds_exists(ds_depthgrid_, ds_type_grid)){
	// Sort the grid by ascending y value 
	ds_grid_sort(ds_depthgrid_, 1, true);
	
	//Draw all the instances in that order (lowest to highest)
	for(var _yy = 0; _yy < ds_grid_height(ds_depthgrid_); _yy++){
		//Draw instance
		var _instanceId = ds_depthgrid_[# 0,_yy]
		with(_instanceId){
			draw_self();	
		}
	}
	ds_grid_destroy(ds_depthgrid_);
}