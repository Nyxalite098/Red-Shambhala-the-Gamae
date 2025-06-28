left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

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
