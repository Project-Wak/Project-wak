/// @description Insert description here
// You can write your code in this editor
//global.show_guide_mes = "보스 레이드\n\n보스 몹을 잡게 되면, 왁드로이드의 완성을 늦출수 있다.\n보스를 잡을때 마다 D-day가 6시간씩 연장되며\n(쉬움 난이도의 경우 12시간씩 연장된다)\n\n보스 클리어시 다음 구역으로 이동할수 있게 해주는 '키카드'를 드랍한다.\n\n(참고로, 보스는 여러번 반복해서 잡을수 있다)"
//	global.show_guide_mes_spr = 4
//instance_create_depth(player.x,player.y-300,player.depth,fire_turret)

var _achievement = instance_create_depth(x,y,depth,bg_achievement)
_achievement.text = "test message!"
_achievement.icon_num = 0