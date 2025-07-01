x = Obj_gysidog.x;
y = Obj_gysidog.y;

if mouse_check_button(mb_left)
{ 
	instance_create_layer(Obj_Gysidogattack.x, Obj_Gysidogattack.y, "Instances", Obj_bark);
}