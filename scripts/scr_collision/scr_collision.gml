// =============================
// Use this in a collision event
// =============================

//Basic collision

//Set up
var a,xoff,yoff,om,mm,mag,moveOtherTo;

a = point_direction(x, y, other.x, other.y);    //Get the direction from the colliding object
xoff = lengthdir_x(1, a);                       //Get the offset vector
yoff = lengthdir_y(1, a);
om = other.mass / mass;                         //start the fake "physics mass" calculations
mm = mass / other.mass;
mag = sqrt((om * om) + (mm * mm));
om /= mag;
mm /= mag;

//Move out of collision
while (place_meeting(x, y, other))
{
    x -= xoff * om; //Move the instance out of collision
    y -= yoff * om;
    other.x += xoff * mm; //Move the other instance out of the collision
    other.y += yoff * mm;
}
