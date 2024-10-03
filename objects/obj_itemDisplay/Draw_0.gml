draw_self()

if mouse_x > room_width /2 {
	draw_set_halign(fa_right)
	orientation = -1
	
}
else{
	draw_set_halign(fa_left)
	orientation = 1
}

if drawInfo = true{
	draw_set_alpha(0.8)
	draw_rectangle(mouse_x,mouse_y,mouse_x+550*orientation,mouse_y+180,0)
	draw_set_color(c_yellow)
	draw_set_alpha(1)
	draw_text(mouse_x + 10, mouse_y + 10, name)
	draw_set_color(c_white)
	draw_set_font(fnt_mainFntSmall)
	draw_text_ext(mouse_x + 10, mouse_y + 50,descr,30,500)
	draw_set_alpha(1)
	draw_set_color(c_black)
}

if type = "Gun"{
	scale = 1.8
}
else{
	scale = 0.8
}
draw_sprite_ext(itemSprite,image_index,x,y,scale,scale,0,c_white,1)

draw_set_halign(fa_left)