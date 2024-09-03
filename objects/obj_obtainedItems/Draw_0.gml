draw_self()
for(var _itemIndex = 0; _itemIndex < ds_list_size(global.cosmetics); _itemIndex += 1){
	var _item = ds_list_find_value(global.cosmetics,_itemIndex)
	if obj_player.sprite_index = spr_playerStand{
		var _subImg = 0
	}
	else{
		var _subImg = obj_player.image_index
	}
	draw_sprite_ext(_item,_subImg,x,y,image_xscale,1,0,c_white,1)
}