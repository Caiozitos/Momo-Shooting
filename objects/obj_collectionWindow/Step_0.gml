if stopAnim = true{

// Espaçamento e posição inicial dos itens
var item_spacing = 130; // Espaçamento entre os itens
var items_per_row = 9; // Número de itens por linha
var start_x = 220; // Posição x inicial
var start_y = 350; // Posição y inicial

// Desenhando os itens
for (var i = 0; i <= ds_list_size(global.shopItems); i += 1) {
    // Calcular a posição x e y
    var x_position = start_x + (i mod items_per_row) * item_spacing;
    var y_position = start_y + (i div items_per_row) * item_spacing;

   instance_create_depth(x_position,y_position,depth-90,obj_itemDisplay,{item: ds_list_find_value(global.shopItems,i)})
}
instance_create_depth(x,y+250,depth-99999,obj_backButton,{father: id})

stopAnim = false
}

if image_index >= 7{
	image_index = 8
}