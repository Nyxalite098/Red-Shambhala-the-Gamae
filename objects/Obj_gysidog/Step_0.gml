var x_mov = keyboard_check(ord("d"))-keyboard_check(ord("a"));
var y_mov = keyboard_check(ord("w"))-keyboard_check(ord("s"));

move_and_collide(x_mov*mov_speed, y_mov*mov_speed, tile_map);

//set sprite
if xspd > 0 = true
{
	sprite_index = Spr_gysidog_RIGHTMOVE;
}
if xspd < 0 = true
{
	sprite_index = Spr_gysidog_LEFTMOVE;
}
if keyboard_check_pressed(vk_left)
{
	still = true;
}

if keyboard_check_pressed(vk_right)
{
	still = false;
}

if xspd==0 and  yspd==0
{
    sprite_index = still ? Spr_gysidog_LEFTSTILL : Spr_gysidog_RIGHTSTILL;
}

if yspd==0 and abs(xspd)>0 
{
    sprite_index = still ? Spr_gysidog_LEFTMOVE : Spr_gysidog_RIGHTSTILL;
} 