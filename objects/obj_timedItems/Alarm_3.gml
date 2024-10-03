/// @description Molotov
if ds_list_find_index(global.cosmetics,spr_obtMolotov) != -1{
	instance_create_depth(x,y,depth+50,obj_molotov)
}
alarm[3] = 60 * 6



