
var x_in = keyboard_check(ord("D"))-keyboard_check(ord("A"));
var y_in = keyboard_check(ord("S"))-keyboard_check(ord("W"));

var mov_dir = point_direction(0, 0, x_in, y_in);
if (x_in!=0 || y_in!=0) {
    var x_mov = lengthdir_x(mov_speed, mov_dir)
    var y_mov = lengthdir_y(mov_speed, mov_dir)
    
    move_and_collide(x_mov*mov_speed, y_mov*mov_speed, tile_map);
}

switch (x_in) {
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
