if distance_to_object(obj_player) < 1000
{
	if global.fort4health > 0
	{
	///Up Cannons
		if ((alarm[0] = 0) or (alarm[0] = -1))
		{
			varfire = round(random(3))
			if varfire = 0
			{
				bullet = instance_create_depth(x - 64,y - 128,-50,obj_cannonball)
				bullet.direction = 90
				bullet.speed = global.bulletspeed
				alarm[0] = 35
			}
		}
		if ((alarm[1] = 0) or (alarm[1] = -1))
		{
			varfire2 = round(random(3))
			if varfire2 = 0
			{
				bullet2 = instance_create_depth(x + 64 ,y - 128,-50,obj_cannonball)
				bullet2.direction = 90
				bullet2.speed = global.bulletspeed
				alarm[1] = 35
			}
		}
		if ((alarm[8] = 0) or (alarm[8] = -1))
		{
			varfire9 = round(random(3))
			if varfire9 = 0
			{
				bullet9 = instance_create_depth(x,y - 128,-50,obj_cannonball)
				bullet9.direction = 90
				bullet9.speed = global.bulletspeed
				alarm[8] = 35
			}
		}
		// Right Cannons
		if ((alarm[2] = 0) or (alarm[2] = -1))
		{
			varfire3 = round(random(3))
			if varfire3 = 0
			{
				bullet3 = instance_create_depth(x + 128,y - 64,-50,obj_cannonball)
				bullet3.direction = 0
				bullet3.speed = global.bulletspeed
				alarm[2] = 35
			}
		}
		if ((alarm[3] = 0) or (alarm[3] = -1))
		{
			varfire4 = round(random(3))
			if varfire4 = 0
			{
				bullet4 = instance_create_depth(x + 128,y + 64,-50,obj_cannonball)
				bullet4.direction = 0
				bullet4.speed = global.bulletspeed
				alarm[3] = 35
			}
		}
		if ((alarm[9] = 0) or (alarm[9] = -1))
		{
			varfire10 = round(random(3))
			if varfire10 = 0
			{
				bullet10 = instance_create_depth(x + 128,y,-50,obj_cannonball)
				bullet10.direction = 0
				bullet10.speed = global.bulletspeed
				alarm[9] = 35
			}
		}
		// Down Cannons
		if ((alarm[4] = 0) or (alarm[4] = -1))
		{
			varfire5 = round(random(3))
			if varfire5 = 0
			{
				bullet5 = instance_create_depth(x + 64 ,y + 128,-50,obj_cannonball)
				bullet5.direction = 270
				bullet5.speed = global.bulletspeed
				alarm[4] = 35
			}
		}
		if ((alarm[5] = 0) or (alarm[5] = -1))
		{
			varfire6 = round(random(3))
			if varfire6 = 0
			{
				bullet6 = instance_create_depth(x - 64,y + 128,-50,obj_cannonball)
				bullet6.direction = 270
				bullet6.speed = global.bulletspeed
				alarm[5] = 35
			}
		}
		if ((alarm[10] = 0) or (alarm[10] = -1))
		{
			varfire11 = round(random(3))
			if varfire11 = 0
			{
				bullet11 = instance_create_depth(x,y + 128,-50,obj_cannonball)
				bullet11.direction = 270
				bullet11.speed = global.bulletspeed
				alarm[10] = 35
			}
		}
		// Left Cannons
		if ((alarm[6] = 0) or (alarm[6] = -1))
		{
			varfire7 = round(random(3))
			if varfire7 = 0
			{
				bullet7 = instance_create_depth(x - 128,y - 64,-50,obj_cannonball)
				bullet7.direction = 180
				bullet7.speed = global.bulletspeed
				alarm[6] = 35
			}
		}
		if ((alarm[7] = 0) or (alarm[7] = -1))
		{
			varfire8 = round(random(3))
			if varfire8 = 0
			{
				bullet8 = instance_create_depth(x - 128,y + 64,-50,obj_cannonball)
				bullet8.direction = 180
				bullet8.speed = global.bulletspeed
				alarm[7] = 35
			}  
		}
		if ((alarm[11] = 0) or (alarm[11] = -1))
		{
			varfire12 = round(random(3))
			if varfire12 = 0
			{
				bullet12 = instance_create_depth(x - 128,y,-50,obj_cannonball)
				bullet12.direction = 180
				bullet12.speed = global.bulletspeed
				alarm[11] = 35
			}
		}
	}
}
if global.fort4health <= 0
{
	if lock = false
	{
		extraalarm1 = 60
		extraalarm2 = 1350
		lock = true;
		global.varscore += (5000 + round(random(5000)))
	}
	if extraalarm1 > 1
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
	if extraalarm1 > 0
	{
		extraalarm1 -= 1;
	}
	if extraalarm2 > 0
	{
		extraalarm2 -= 1;
	}
	if extraalarm2 <= 0
	{
		global.fort4health = 5000;	
	}

}