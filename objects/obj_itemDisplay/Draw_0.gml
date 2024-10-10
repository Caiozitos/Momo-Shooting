draw_self()

if type = "Gun"{
    scale = 1.8
}
else{
    scale = 0.8
}
draw_sprite_ext(itemSprite,image_index,x,y,scale,scale,0,c_white,1)

draw_set_halign(fa_left)