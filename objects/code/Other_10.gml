/// @description statistics
// You can write your code in this editor

/**
//statistics
ga_setEnabledInfoLog(true);
ga_setEnabledVerboseLog(true);

ga_configureBuild(string(global.game_ver));

var array = ga_array("golds","using_weapon","total_died","cleared_level","ending_fading","ending_cannot_rewind","ending_end_of_world","ending_gameover","ending_runner","total_replayed","maximum_upgrade","playtime","using_accesories");
ga_configureAvailableResourceItemTypes(array);


ga_initialize("9b0ef5613e331d4d5f015817d5b6c7ba", "b65be6dc2ff3a35d6eba98df5cbc238af3509516");


//보유 골드량
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "golds", string(global.gold));

//현재 사용중인 무기
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "using_weapon", string(global.n_sword));

//총 사망 횟수
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "total_died", string(global.total_died));

//총 클리어한 섹터 = 보스
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "cleared_level", string(global.opened_sector));

//소멸 엔딩
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "ending_fading", string(global.achievement_name[1]));

//회귀 불능 엔딩
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "ending_cannot_rewind", string(global.achievement_name[2]));

//세계의 종말 엔딩
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "ending_end_of_world", string(global.achievement_name[3]));

//게임 오버 엔딩
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "ending_gameover", string(global.achievement_name[4]));

//도망자 엔딩
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "ending_runner", string(global.achievement_name[5]));

//다회차 횟수
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "total_replayed", string(global.replayed));


var maximum_upgrades = 0;
for(var i = 0; i <= global.total_weapon_num; i++)
{
//웨폰 보유 유무
	if global.weapon_upgraded[i] > maximum_upgrades
	{
	maximum_upgrades = global.weapon_upgraded[i];
	}
}


//무기 - 최대 강화량
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "maximum_upgrade", string(maximum_upgrades));

//플레이 타임
ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "playtime", string(global.playtime));

**/

