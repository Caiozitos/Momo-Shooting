if sprite_index = spr_missile{
	if instance_exists(obj_enemyColisor){
	move_towards_point(obj_enemyColisor.x,obj_enemyColisor.y,speed)
	}
}
