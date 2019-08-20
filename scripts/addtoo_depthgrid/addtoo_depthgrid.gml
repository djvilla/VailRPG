///@desc addtoo_depthgrid

with(obj_draw){
	//Create the grid the first time
	if(!ds_exists(ds_depthgrid_, ds_type_grid)){
		//Create depthgrid data structure
		ds_depthgrid_ = ds_grid_create(2,1);

		//Add object's id to grid
		ds_depthgrid_[# 0,0] = other;

		//Add object's y value to grid
		ds_depthgrid_[# 1,0] = other.y;
	} else{
		//Resize the grid
		var _heightOfGrid = ds_grid_height(ds_depthgrid_);
		ds_grid_resize(ds_depthgrid_, 2, _heightOfGrid+1);
		
		//Add object's id to grid (increment+1)
		ds_depthgrid_[# 0,_heightOfGrid] = other;

		//Add object's y value to grid
		ds_depthgrid_[# 1,_heightOfGrid] = other.y;
	}
}