#region Virando o sprite para a direção do player
if obj_player.x > x{
	if image_xscale = -0.5{
		image_xscale = 0.5
	}
	if image_xscale = -1{
		image_xscale = 1
	}
}
else{
	if image_xscale = 0.5{
		image_xscale = -0.5
	}
	if image_xscale = 1{
		image_xscale = -1
	}
}
#endregion

#region Comportamento
//Caindo do céu
if sprite_index = spr_enemyClosedPodFall{
	y += fallSpeed
	if alarm[2] >= 0{
		image_index = 0
	}
	else{
		if image_index >= 3{
			sprite_index = spr_enemyClosedPod
		}
	}
}

//Atirando
if sprite_index = spr_enemyPodWalker or sprite_index = spr_enemyPodWalkerShot{
	if point_distance(x,y,obj_player.x,obj_player.y) < 250{
	hspd = 1
	sprite_index = spr_enemyPodWalkerShot
	if alarm[4] = 0 or alarm[4] = -1{
		alarm[4] = 30
	}
	}
	else{
		sprite_index = spr_enemyPodWalker
		hspd = 3
		}
	}
	move_towards_point(obj_player.x,obj_player.y,hspd)

//Mantendo a depth
depth = -y

//Morrendo
if hp <= 0{
	instance_destroy()
}

//Ficando vermelho quando toma dano
if i < 255{
	i += 10
}
if i > 255{
	i = 255
}
image_blend = make_color_rgb(255,i,i)


//
#endregion

#region Colisão

if sprite_index = spr_enemyPodWalker or sprite_index = spr_enemyPodWalkerShot{
if son.state != "blind" and sprite_index != spr_enemyClosedPod{
move_towards_point(obj_player.x,obj_player.y,hspd)
}
}


if place_meeting(x + hspd + 2, y, obj_enemyColisor) {
    var _enemyInst = instance_place(x + hspd + 2, y, obj_enemyColisor);
    if _enemyInst != son.id {
        x -= hspd + 3;
    }
}

if place_meeting(x - hspd + 2, y, obj_enemyColisor) {
    var _enemyInst = instance_place(x - hspd + 2, y, obj_enemyColisor);
    if _enemyInst != son.id {
        x += hspd + 3;
    }
}

if place_meeting(x, y + hspd + 2, obj_enemyColisor) {
    var _enemyInst = instance_place(x, y + hspd + 2, obj_enemyColisor);
    if _enemyInst != son.id {
        y -= hspd + 3;
    }
}

if place_meeting(x, y - hspd + 2, obj_enemyColisor) {
    var _enemyInst = instance_place(x, y - hspd + 2, obj_enemyColisor);
    if _enemyInst != son.id {
        y += hspd + 3;
    }
}
#endregion
