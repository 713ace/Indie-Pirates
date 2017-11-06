if distance_to_object(obj_player) < 1000
{
	if global.fort3health > 0
	{
	// Right Cannon
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
		// Left Cannon
		if ((alarm[1] = 0) or (alarm[1] = -1))
		{
			varfire1 = round(random(3))
			if varfire1 = 0
			{
				bullet1 = instance_create_depth(x - 64,y,-50,obj_cannonball)
				bullet1.direction = 180
				bullet1.speed = global.bulletspeed
				alarm[1] = 35
			}
		}
	}
}
if global.fort3health <= 0
{
	if lock = false
	{
		alarm[8] = 60
		alarm[9] = 1350
		lock = true;
		global.varscore += (250 + round(random(250)))
	}
	if alarm[8] > 1
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