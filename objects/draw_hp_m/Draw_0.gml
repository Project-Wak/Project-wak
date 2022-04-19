/// @description Insert description here
// You can write your code in this editor
if can_draw = 1
{
	if (is_real(d_text) && d_text > 0) || d_text = "Super save" || d_text = "Low stenima" || d_text = "Super armor" || d_text = "Stand up!" || d_text = "Ricochet!" || d_text = "Parrying!" || d_text = "Revived!" || d_text = "슈퍼 세이브" || d_text = "스테미나 부족" || d_text = "슈퍼 아머" || d_text = "일어남!" || d_text = "도탄!" || d_text = "패링!" || d_text = "부활!"
	{
	a ++

	if a%10 = 1
	{
	b++
		if b > 1
		{
		image_alpha = 1
		b = 0
		}
		else
		{
		image_alpha = 0.7
		}
	}

	draw_text_kl_scale(x,y,d_text,16,999,image_alpha*real_alpha,image_blend,0,0,font0,1/3*abs(image_xscale),1/3*abs(image_yscale),image_angle)
	}
}