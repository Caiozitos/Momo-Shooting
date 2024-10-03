alarm[1] = 60 * 6
if ds_list_find_index(global.cosmetics,spr_obtGrenade) != -1{
	instance_create_depth(obj_playerGun.x,obj_playerGun.y,depth,obj_grenade)
}