/// @description Insert description here
// You can write your code in this editor
if image_alpha <= 0 || image_xscale <= 0 || image_yscale <= 0
{
instance_destroy()
}

image_alpha += (-0.01 - image_alpha)*alpha_m_sp
sec_alpha += (1 - sec_alpha)*alpha_m_sp*1.1
image_xscale += (txscale - image_xscale)*scale_m_sp
image_yscale += (tyscale - image_yscale)*scale_m_sp

f_xscale += (1 - f_xscale)*scale_m_sp*2
f_yscale += (1 - f_yscale)*scale_m_sp*2


if shake_ef > 0
{
timer ++
	if timer > 20
	{
	shake_ef ++
	timer = 0
	
		if shake_ef > 2
		{
		shake_ef = 1
		}
	}
	
	if shake_ef = 1
	{
	direction += (-45+90 - direction)*0.1
	}
	
	if shake_ef = 2
	{
	direction += (45+90 - direction)*0.1
	}
}