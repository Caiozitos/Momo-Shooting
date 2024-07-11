itemBought = false
alarm[0] = 20
//Pegando o ID do item

ds_list_shuffle(global.shopItems)
item = global.shopItems[|0]
show_debug_message(item)
ds_list_delete(global.shopItems,ds_list_find_index(global.shopItems,item))
instance_create_depth(x,y+180,depth,obj_buttonBuy,{item: item,father:id})
