/// @description Insert description here
// You can write your code in this editor
if surface_exists(owner_surface)
{
surface_set_target(owner_surface);
draw_clear_alpha(0,0);  // It doesn't matter what colour you give it - it's going to be transparent.
surface_reset_target();
}

