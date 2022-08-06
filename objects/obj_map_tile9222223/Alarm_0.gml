/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_guisangadoo)
{
var warning_guide = instance_create_depth(3560,1522,0,obj_warning)
warning_guide.warning_message = "감전 주의"
}
else
{
var warning_guide = instance_create_depth(3560,1522,0,obj_warning)
warning_guide.warning_message = "별과 같은 투사체가 플레이어를 향해 떨어지니 주의"
}