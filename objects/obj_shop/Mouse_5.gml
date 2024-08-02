if point_distance(x,y,obj_player.x,obj_player.y) < 300{
	if global.wavePaused and not instance_exists(obj_shopWindow){
		instance_create_depth(105,100,-9999,obj_shopWindow)
		obj_gameController.bossSpawned = false
	}
}
