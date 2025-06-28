left_key = keyboard_check(vk_left);
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_key = keyboard_check(vk_shift) + 1;

xspd = (right_key - left_key) * movementspd * shift_key;
yspd = (down_key - up_key) * movementspd * shift_key;

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

//set sprite
if xspd > 0 = true
{
	sprite_index = Spr_gysi_2;
}
if xspd < 0 = true
{
	sprite_index = Spr_gysi_2;
}
if (yspd = 0) = false
{ if xspd > 0 = false
	{
		sprite_index = Spr_gysi_2
	}
}
if (xspd = 0) = true
{ if (yspd = 0) = true
	{
		sprite_index = Spr_gysiman;
	}
}