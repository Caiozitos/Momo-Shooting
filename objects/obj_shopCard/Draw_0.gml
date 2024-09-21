draw_self()
draw_set_font(fnt_mainFnt)
draw_set_halign(fa_center)
var _tamanhoTexto = 0.90 - string_length(name) / 100
draw_text_ext_transformed(x,y+70,name,2,200,_tamanhoTexto,_tamanhoTexto,0)
draw_set_font(fnt_mainFntSmall)
draw_text(x,y+110,"$" + string(price))
draw_set_halign(fa_left)