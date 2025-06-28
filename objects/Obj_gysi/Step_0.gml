left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

xspd = (right_key - left_key) * movementspd;
yspd = (down_key - up_key) * movementspd;

//collisions
if place_meeting(x + xspd,y,Obj_wall) = true
{
	xspd = 0;
}
if place_meeting(x,y + yspd, Obj_wall) = true
{
	yspd = 0;
}

x = x + xspd;
y = y + yspd;
