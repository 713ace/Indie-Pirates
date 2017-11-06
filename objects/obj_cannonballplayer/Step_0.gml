if ((alarm[0] = 0) or (alarm[0] = -1))
{
	image_alpha -= 0.05
}
// Hit Enemys
if place_meeting(x,y,obj_fort1)
{
	instance_create_depth(x,y,-1200,obj_effects)
	instance_destroy();
	global.fort1health -= 50
}
if place_meeting(x,y,obj_fort2)
{
	instance_create_depth(x,y,-1200,obj_effects)
	instance_destroy();
	global.fort2health -= 50
}
if place_meeting(x,y,obj_fort3)
{
	instance_create_depth(x,y,-1200,obj_effects)
	instance_destroy();
	global.fort3health  -= 50
}
if place_meeting(x,y,obj_fort4)
{
	instance_create_depth(x,y,-1200,obj_effects)
	instance_destroy();
	global.fort4health -= 50
}
if place_meeting(x,y,obj_enemyship1)
{
	instance_create_depth(x,y,-1200,obj_effects)
	instance_destroy();
}