      ///Movement
if global.pointdistance > 20  // Sets Joystick Deadzone
{
	direction = global.pointdirection // Sets Acceleration and Max Speed
	if speed < maxspeed // Max Speed
	{
		speed += 0.03   // Accelleration Speed
	}
}
if global.pointdistance = 0 // Sets De-Acceleration 
{	
	if speed > 0 //Minimum Speed
	{
		speed -= 0.03	// De-Acceleration Speed
	}
}

// Collision
var bbox_side;

// Horizontal Collision
if hspeed > 0 
{
	bbox_side = bbox_right	
}
else
{
	bbox_side = bbox_left	
}
if (tilemap_get_at_pixel(vartilemap,bbox_side+hspeed,bbox_top) != 0) || (tilemap_get_at_pixel(vartilemap,bbox_side+hspeed,bbox_bottom) != 0)
{
	if (hspeed > 0)
	{
		 x = x - (x mod 32) + 31 - (bbox_right - x )
	}
	else
	{
		x = x - (x mod 32) - (bbox_left - x)	
	}
	hspeed = 0;
	vspeed = 0;
	global.varhealth -= 100
	alarm[2] = 15
	image_alpha = 0.4
}

//Vertical Collision
if vspeed > 0 
{
	bbox_side = bbox_bottom
}
else
{
	bbox_side = bbox_top	
}
if (tilemap_get_at_pixel(vartilemap,bbox_left,bbox_side+vspeed) != 0) || (tilemap_get_at_pixel(vartilemap,bbox_right,bbox_side+vspeed) != 0)
{
	if (vspeed > 0)
	{
		 y = y - (y mod 32) + 31 - (bbox_bottom - y)
	}
	else
	{
		y = y - (y mod 32) - (bbox_top - y)	
	}
	vspeed = 0;
	hspeed = 0;
	global.varhealth -= 100
	alarm[2] = 15
	image_alpha = 0.4
}


//Image Angle
image_angle = global.pointdirection - 270  // Sets image to correrct movement direction


//Change Sprite
if (global.varhealth >= 666)
{
	sprite_index = ship3
}
if ((333 <= global.varhealth) and (global.varhealth < 666))
{
	sprite_index = ship9
}
if (( 0 < global.varhealth) and (global.varhealth < 333))
{
	sprite_index = ship15	
}
if (global.varhealth <= 0)
{
	sprite_index = ship21
	effects = round(random(6))
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
	instance_create_depth(x,y,-1300,obj_fade)
	if lock = false
	{
		alarm[11] = 90;
		lock = true;
	}
}

// Cannonball Fire
if keyboard_check_pressed(vk_space)
{
	if ((alarm[10] = 0) or (alarm[10] = -1))
	{
		bullet = instance_create_depth(x,y,100,obj_cannonballplayer)
		bullet.direction = image_angle - 10
		bullet.speed = global.bulletspeed
		bullet2 = instance_create_depth(x,y,100,obj_cannonballplayer)
		bullet2.direction = image_angle - 170
		bullet2.speed = global.bulletspeed
		alarm[10] = 30;
	} 
}
//Cannon Timer
global.cannonballtimer = alarm[10]
if alarm[10] = -1
{
	global.cannonballtimer = 30	
}

// Damage from Cannon Balls
if place_meeting(x,y,obj_cannonball)
{
	alarm[2] = 15
	image_alpha = 0.4
	global.varhealth -= 50
}

//Music 
if global.varhealth < 500
{
	if lock1 = false
	{
		audio_stop_sound(sound_song1)
		audio_play_sound(sound_song2,1,true)
		lock1 = true
	}
}
if global.varhealth <= 0
{
	audio_stop_sound(sound_song2)
	audio_stop_sound(sound_background)
}

// Debug Only
global.varvspeed = vspeed
global.varhspeed = hspeed

