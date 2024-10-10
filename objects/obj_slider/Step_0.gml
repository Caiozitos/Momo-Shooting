if mouse_check_button(mb_left){
	if mouse_x < room_width/2 + 205 and mouse_x > room_width/2 - 10{
		if mouse_y - y < 30 and mouse_y - y > -30{
		x = mouse_x
		}
	}
}

posicao = (18 + (x-room_width/2)-13)
if posicao < 0{
	posicao = 0
}
if posicao > 200{
	posicao = 200
}
audio_master_gain(posicao/100)