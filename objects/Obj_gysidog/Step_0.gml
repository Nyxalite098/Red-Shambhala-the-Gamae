var x_mov = keyboard_check(ord("D"))-keyboard_check(ord("A"));
var y_mov = keyboard_check(ord("S"))-keyboard_check(ord("W"));

move_and_collide(x_mov*mov_speed, y_mov*mov_speed, tile_map);

switch (x_mov) {
	case -1:
        sprite_index = Spr_gysidog_LEFTMOVE;
        break;
    case 1:
        sprite_index = Spr_gysidog_RIGHTMOVE;
        break;
    case 0:
        if (sprite_index == Spr_gysidog_RIGHTMOVE) sprite_index = Spr_gysidog_RIGHTSTILL;
        else if (sprite_index == Spr_gysidog_LEFTMOVE) sprite_index = Spr_gysidog_LEFTSTILL; 
        break;
}
