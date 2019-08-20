/// @description Insert description here
//Incase the game ends at half a frame and the
//data structure stays
if(ds_exists(ds_depthgrid_, ds_type_grid)){
	ds_grid_destroy(ds_depthgrid_);
}