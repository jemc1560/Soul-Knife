event_inherited();
//logic for swapping sprites depending on direction:
index = object_get_sprite(originalPlayer);
name = sprite_get_name(index);
//show_debug_message(name);
//get name of current spirte, parse it and then switch depending on direction
var movement_x = key_right - key_left;
var movement_y = key_down - key_up;
if(movement_x > 0)
{
	image_xscale = 1
	sprite_index = khile_side
}
else if(movement_x < 0)
{
	image_xscale = -1
	sprite_index = khile_side
}
else if(movement_y > 0)
{
	image_xscale = 1
	sprite_index = khile_down
}
else if(movement_y < 0)
{
	image_xscale = 1
	sprite_index = khile_up
}
else
{
	image_xscale = 1
	sprite_index = khile_main
}

if (hp <= 0) {
	instance_destroy();
}
