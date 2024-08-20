function scr_damageFeedback(dmg, col){
	instance_create_layer(x,y-50,"lay_damageFeedback",obj_damageFeedback,{damage: dmg, color: col})
}