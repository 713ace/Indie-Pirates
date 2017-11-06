
//Enemy Speed (Following)
if (distance_to_object(obj_player) > 220)
{
	if speed <= 4
	{
		speed += 0.05
	}
}
else
{
	if speed > 0
	{
		speed -= 0.1
	}
}
if speed < 0
{
	speed = 0;	
}
// Rotation Speed and Following 
pointdirectionphysicsenemy = point_direction(x,y,obj_player.x,obj_player.y);
varsaveangle = angle_difference(pointdirectionenemy,pointdirectionphysicsenemy) // Checks for smallest angle
if varsaveangle < 10  // Horizontal Deadzone
{
	pointdirectionenemy += 2;  //Max directional change positve
}
if varsaveangle > -10  // Horizontaln Deadzone 
{
	pointdirectionenemy -= 2; // Max directional change negative
}
if pointdirectionenemy < -1  // Resets the 360 degree movenet to zero if it exceeds 360 
{
	pointdirectionenemy = 358; //Sets to 360
}
if pointdirectionenemy > 361
{
	pointdirectionenemy = 2; //Sets to 360
}
if speed > 0
{
	direction = pointdirectionenemy;
	angleturn = 0
}
if speed = 0
{
	direction = (pointdirectionenemy + angleturn);
	if angleturn < 45
	{
		angleturn += 0.5
	}
}

//Avoid Forts
if point_distance(x,y,obj_player.x,obj_player.y) < 1500
{
	if point_distance(x,y,obj_fort1.x,obj_fort1.y) < 250
	{
		speed = 0;
	}
	if point_distance(x,y,obj_fort2.x,obj_fort2.y) < 250
	{
		speed = 0;
	}
	if point_distance(x,y,obj_fort3.x,obj_fort3.y) < 250
	{
		speed = 0;
	}
	if point_distance(x,y,obj_fort4.x,obj_fort4.y) < 250
	{
		speed = 0;
	}
}


//Time to Shoot Shit Motha-Fucka
if (alarm[0] <= 0)
{
	shottimer = round(random(20))
	if shottimer = 1
	{
		bullet = instance_create_depth(x,y,-50,obj_cannonball)
		bullet.direction = direction + 45
		bullet.speed = global.bulletspeed
		bullet2 = instance_create_depth(x,y,-50,obj_cannonball)
		bullet2.direction = direction - 45
		bullet2.speed = global.bulletspeed
		alarm[0] = 60
	}
}
if place_meeting(x,y,obj_cannonballplayer)
{
	shiphealth -= 50	
}

//Draw Sprite, Death, and Fade Out
if (shiphealth >= 135)
{
	sprite_index = ship2
}
if ((75 <= shiphealth) and (shiphealth < 135))
{
	sprite_index = ship8
}
if (( 0 < shiphealth) and (shiphealth < 75))
{
	sprite_index = ship14	
}
if (shiphealth <= 0)
{
	sprite_index = ship20
	effects = round(random(8))
	if effects = 1
	{
		placement = round(random(1))
		if placement = 0
		{
			instance_create_depth(x + round(random(40)), y + round(random(40)), -1500, obj_effects)
		}
		if placement = 1
		{
			instance_create_depth(x - round(random(40)), y - round(random(40)), -1500, obj_effects)
		}
	}
	if lock = false
	{
		alarm[11] = 30;
		lock = true;
	}
	image_alpha -= 0.03
}

//Set Angle
image_angle = direction - 270;



