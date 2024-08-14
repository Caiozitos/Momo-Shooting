if not instance_exists(obj_shopWindow){

//Desenhando a barra de HP
draw_healthbar(85,20,350,60,(hp*100/hpMax),c_maroon,c_red,c_red,0,true,false)
draw_sprite(spr_hud,0,0,0)
draw_set_color(c_black)
draw_set_font(fnt_mainFnt)
draw_text(175,20,string(hp)+"/"+string(hpMax))

//Desenhando o timer e o indicador de wave
draw_text(590,70,"Wave "+string(global.wave))
draw_set_font(fnt_mainFntBig)
var _timer = round(obj_gameController.alarm[1]/60)
draw_text(620,20,_timer)

//Desenhando o score
draw_set_font(fnt_mainFnt)
var _str = "";
var _digits = 6;
var _scorestring = string(global.score);
var _oldlength = string_length( _scorestring);
for( var i=0; i<_digits-_oldlength; i++ ){ _str += "0"; }
_str += _scorestring;
draw_text(1150, 10, _str );

//Desenhando o dinheiro
draw_set_font(fnt_mainFnt)
draw_text(135,70,global.money)

//Desenhando os status
if global.showStats = true{
	draw_text(1000,500,"Damage:" + string(global.statDamage))
	draw_text(1000,530,"Speed:" + string(obj_player.hspd))
	draw_text(1000,560,"ShotRateBonus:" + string(global.shotRateBonus))
}

//Desenhando o coração
if hp >= hpMax*0.75{
	var _sprite = spr_heart100
}
else if hp >= hpMax*0.50 and hp < hpMax*0.75{
	var _sprite = spr_heart75
}
else if hp >= hpMax*0.25 and hp < hpMax*0.50{
	var _sprite = spr_heart50
}
else if hp < hpMax*0.25{
	var _sprite = spr_heart25
}
draw_sprite(_sprite,-1,45,45)
}

