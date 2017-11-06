  ///Movement
x = camera_get_view_x(view_camera[0]) + 112
y = camera_get_view_y(view_camera[0]) + 638
global.pointorginx = x;
global.pointorginy = y;
if mouse_check_button(mb_left)
{
	global.pointdistance = point_distance(global.pointorginx,global.pointorginy,mouse_x,mouse_y);   //Sets Location of Finger Touch
	global.pointdirectionphysics = point_direction(global.pointorginx,global.pointorginy,mouse_x,mouse_y);  //Sets direction (360 degrees) (0-360) of finger touch)
	varsaveangle = angle_difference(global.pointdirection,global.pointdirectionphysics) // Checks for smallest angle
	if varsaveangle < 10  // Horizontal Deadzone
	{
		global.pointdirection += 2;  //Max directional change positve
	}
	if varsaveangle > -10  // Horizontaln Deadzone 
	{
		global.pointdirection -= 2; // Max directional change negative
	}
	if global.pointdirection < -1  // Resets the 360 degree movenet to zero if it exceeds 360 
	{
		global.pointdirection = 358; //Sets to 360
	}
	if global.pointdirection > 361
	{
		global.pointdirection = 2; //Sets to 360
	}
}
if mouse_check_button_released(mb_left)
{
	global.pointdistance = 0;
}
varsavepoint = global.pointdirection