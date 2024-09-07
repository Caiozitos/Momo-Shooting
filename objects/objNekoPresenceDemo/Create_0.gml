/// @description Initialize Discord.

#macro DISCORD_APP_ID "1282030267229536357"

ready = false;
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}