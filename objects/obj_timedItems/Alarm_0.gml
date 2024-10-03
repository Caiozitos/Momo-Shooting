///@description Mold

if ds_list_find_index(global.cosmetics,spr_obtMold) != -1{
	instance_create_depth(obj_player.x,obj_player.y+25,obj_player.depth,obj_smoke,{sprite_index: spr_mold})
	}
alarm[0] = 15