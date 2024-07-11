//Virando o sprite para a direção do player
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

//Recuperando-se do freeze
hspd += 2
if hspd > recoverSpd{
	hspd = recoverSpd
}

move_towards_point(obj_player.x,obj_player.y,hspd)
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
