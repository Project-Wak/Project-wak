/// @description Discord Presence
// You can write your code in this editor


var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
window_set_caption("Project Wak");
ready = true;
show_debug_message("date: " + string(date_current_datetime()));
np_setpresence_timestamps(date_current_datetime(), 0, false);
np_setpresence_more("Small image text", "Large image text", false);
	
//np_setpresence() should ALWAYS come the last!!
discord_presence_reloading = 1;
np_setpresence("메인 매뉴", "", "npc"+string(irandom_range(1,8)), "");
	
// passing a URL will add this sprite asynchronously via *internets*
sprite_add(np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]), 1, false, false, 0, 0);
}