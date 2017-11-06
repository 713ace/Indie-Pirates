 if ((alarm[0] = 0) or (alarm[0] = -1))
{
	image_alpha -= 0.05
}
if place_meeting(x,y,obj_player)
{
	instance_create_depth(x,y,-1200,obj_effects)
	instance_destroy();
}
if alarm[11] <= 0
{
	if place_meeting(x,y,obj_enemyship1)
	{
		instance_create_depth(x,y,-1200,obj_effects)
		instance_destroy();
	}
}
if (point_distance(x,y,obj_player.x,obj_player.y) > 1000)
{
	instance_destroy();
}