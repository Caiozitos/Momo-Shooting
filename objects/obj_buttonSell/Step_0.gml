var gun = obj_playerGun.gunList[|value]
if typeof(gun) = "string"{
	image_blend = c_yellow
	misterious = false
}
else{
	image_blend = c_gray
	misterious = true
}

switch (gun) {
    case "pistol":
        sellPrice = 0;
        break;
    case "shotgun":
        sellPrice = 35;
        break;
    case "uzi":
        sellPrice = 30;
        break;
    case "revolver":
        sellPrice = 30;
        break;
    case "dart":
        sellPrice = 30;
        break;
    case "ak47":
        sellPrice = 55;
        break;
    case "flame":
        sellPrice = 55;
        break;
    case "minigun":
        sellPrice = 125;
        break;
    case "rocket":
        sellPrice = 130;
        break;
}


if mouse_check_button_pressed(mb_left) && image_xscale = 1.5 && image_blend = c_yellow{
	if ds_list_size(obj_playerGun.gunList) != 1{
	ds_list_delete(obj_playerGun.gunList,value)
	global.money += sellPrice
	audio_play_sound(snd_chaChing,0,0)
	}
}