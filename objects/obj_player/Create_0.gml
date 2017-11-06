 ///Initalize Variables
/*
if global.whiteship = true
{
	global.varhealth = 1000;
	maxspeed = 6;
}
if global.redship = true
{
	global.varhealth = 1000;
	maxspeed = 6;
}
if global.blueship = true
{
	global.varhealth = 1000;
	maxspeed = 6;
}
if global.greenship = true
{
	global.varhealth = 1000;
	maxspeed = 6;
}
if global.yellowship = true
{
	global.varhealth = 1000;
	maxspeed = 6;
}
*/
global.varhealth = 1000;  //Delete once ship selection screen is done
global.varscore = 0;
speed = 0;
global.varhealth = 1000;
alarm[1] = 150;
vartilemap = layer_tilemap_get_id("tilecollision");
global.varvspeed = 0;
global.varhspeed = 0;
maxspeed = 6;

//Controls
virtual_key_add(obj_firebutton.x -40,obj_firebutton.y -40,80,80,vk_space);

//For all Bullets
global.bulletspeed = 12;
global.varfade = false;

//Fade
lock = false;

//Music
audio_play_sound(sound_background,1,true)
audio_play_sound(sound_song1,2,true)
lock1 = false;

//Fort Healths
global.fort1health = 1000
global.fort2health = 2000
global.fort3health = 500
global.fort4health = 5000