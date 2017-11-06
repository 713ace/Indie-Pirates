if distance_to_object(obj_player) < 1000
{
	if global.fort1health > 0
	{
		if ((alarm[0] = 0) or (alarm[0] = -1))
		{
			varfire = round(random(3))
			if varfire = 0
			{
				bullet = instance_create_depth(x + 64,y,-50,obj_cannonball)
				bullet.direction = 0
				bullet.speed = global.bulletspeed
				alarm[0] = 35
			}
		}
		if ((alarm[1] = 0) or (alarm[1] = -1))
		{
			varfire2 = round(random(3))
			if varfire2 = 0
			{
				bullet2 = instance_create_depth(x ,y + 64,-50,obj_cannonball)
				bullet2.direction = 270
				bullet2.speed = global.bulletspeed
				alarm[1] = 35
			}
		}
		if ((alarm[2] = 0) or (alarm[2] = -1))
		{
			varfire3 = round(random(3))
			if varfire3 = 0
			{
				bullet3 = instance_create_depth(x - 64,y,-50,obj_cannonball)
				bullet3.direction = 180
				bullet3.speed = global.bulletspeed
				alarm[2] = 35
			}
		}
		if ((alarm[3] = 0) or (alarm[3] = -1))
		{
			varfire4 = round(random(3))
			if varfire4 = 0
			{
				bullet4 = instance_create_depth(x,y - 64,-50,obj_cannonball)
				bullet4.direction = 90
				bullet4.speed = global.bulletspeed
				alarm[3] = 35
			}
		}
	}
}
if global.fort1health <= 0
{
	if lock = false
	{
		alarm[4] = 50
		alarm[5] = 1350
		lock = true;
		global.varscore += (1000 + round(random(1000)))
	}
	if alarm[4] > 1
	{
		effects = round(random(6))
		if effects = 1
		{
			placement = round(random(1))
			if placement = 0
			{
				instance_create_depth(x + round(random(120)), y + round(random(120)), -1500, obj_effects)
			}
			if placement = 1
			{
				instance_create_depth(x - round(random(120)), y - round(random(120)), -1500, obj_effects)
			}
		}
		fire = round(random(6))
		if fire = 1 
		{
			placement2 = round(random(1))
			if placement2 = 0
			{
				instance_create_depth(x + round(random(120)), y + round(random(120)), -1500, obj_fire)
			}
			if placement2 = 1
			{
				instance_create_depth(x - round(random(120)), y - round(random(120)), -1500, obj_fire)
			}
		}
	}
	
}