draw_set_color(c_red)
draw_set_font(fnt_mainFntBig)
if drawTrigger = true{
	draw_sprite_ext(spr_gameOverScreeen,0,0,0,1,1,0,c_white,p)
	draw_text(907,245,global.wave)
	draw_text(922,315,ds_list_size(global.inventory))
	draw_text(930,385,global.money)
	draw_text(980,445,global.playtime)
	
	// Espaçamento e posição inicial dos itens
	var item_spacing = 96; // Espaçamento entre os itens
	var items_per_row = 6; // Número de itens por linha
	var start_x = 96; // Posição x inicial
	var start_y = 120; // Posição y inicial

	// Desenhando os itens
	for (var i = 0; i < ds_list_size(global.inventory); i += 1) {
	    // Calcular a posição x e y
	    var x_position = start_x + (i mod items_per_row) * item_spacing;
	    var y_position = start_y + (i div items_per_row) * item_spacing;

	    // Desenhar o sprite do item
	    draw_sprite_ext(ds_list_find_value(global.inventory, i), ds_list_find_value(global.inventoryIcons, i),x_position, y_position, 1, 1, 0, c_red, 1);
	}
}

