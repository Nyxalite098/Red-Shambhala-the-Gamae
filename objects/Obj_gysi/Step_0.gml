var x_mov = keyboard_check(ord("D"))-keyboard_check(ord("A"));
var y_mov = keyboard_check(ord("S"))-keyboard_check(ord("W"));

move_and_collide(x_mov*mov_speed, y_mov*mov_speed, tile_map);