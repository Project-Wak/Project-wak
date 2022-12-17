/// @description Insert description here
// You can write your code in this editor

var first_testers = "StellarSea 서장님 오코츠유타 옥수수칲 탄창 황금뿌리 러머 Ssab 공벌 화염뽱어 젓가락아저씨 진성e 벼슬 페르마벤 댐쿵이 쓰레기맛캔디 1잡탕1 zun 왁만치 alpamin BackSang NANFREE 쥬기 참이프 광부 Contra QuiettBee 사미니 "
var second_testers = "댐쿵이 BackSang 모니타리 스즈메의 문단속 벤찌 별명1577 Kastle 고 라니임니다 재영이요 윤석 러머 최민우 ㅁㅈ 허미온 아리에스 NAㅅ Mang0_k Ladon TJD ajdkg296 쥬기 잠복근무 도트박스 재영 윤석 허미온 cccc 원시인 징버거의 돗대 면주바이 "
var third_testers = "세구세구세구야사랑해 1잡탕1 백상 KIM DDi YOMG TT1 ACHI99 Nikemach damku1214 왁만치 로얄플러쉬 DO_S 이미지박스 킹츄러스 seesaw 소다쿤 플로토돔 펭구 입꼬기 명준 갱후니 조금하는바드 은색의하늘 ajdkg296 ChungYeo sda justahirman 허거덩 Eluhu libertad "

var cre_achievement = 0
if (string_pos(global.nickname,first_testers) != 0)
{
	if cre_achievement = 0
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = "1차 테스터 참여 감사합니다!"
	_achievement.icon_num = 0
	}
give_item(1,20)
cre_achievement = 1
}

if (string_pos(global.nickname,second_testers) != 0)
{
	if cre_achievement = 0
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = "2차 테스터 참여 감사합니다!"
	_achievement.icon_num = 0
	}
give_item(1,21)
cre_achievement = 1
}

if (string_pos(global.nickname,third_testers) != 0)
{
	if cre_achievement = 0
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = "3차 테스터 참여 감사합니다!"
	_achievement.icon_num = 0
	}
give_item(1,22)
cre_achievement = 1
}
