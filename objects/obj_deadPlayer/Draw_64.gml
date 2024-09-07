draw_set_color(c_red)
draw_set_font(fnt_mainFntBig)
if drawTrigger = true{
	draw_sprite_ext(spr_gameOverScreeen,0,0,0,1,1,0,c_white,i)
	draw_text(907,245,global.wave)
	draw_text(922,315,ds_list_size(global.inventory))
	draw_text(930,385,global.money)
	draw_text(980,445,string((current_hour * 60 + current_minute) - global.playtime) + "min")
}