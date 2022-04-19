/// @description Insert description here
// You can write your code in this editor
if start = 1
{
dis_a --

if dis_a < 0
{
dis_a = 0
}

if dis_a = 0
{
dev_mes("공식 서버에 접속합니다");
}

if dis_a = 1
{
dev_mes("초대 코드를 입력해 커뮤니티 서버에 접속합니다");
}

if dis_a = 2
{
dev_mes("커뮤니티 서버를 생성하고, 초대 코드를 통해 유저를 초대 할 수 있습니다");
}

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
}