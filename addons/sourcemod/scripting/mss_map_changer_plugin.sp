#include <sourcemod>

public Plugin:myinfo = 
{
	name = "MSS Map Changer Plugin",
	author = "MelonSoda",
	description = "MSS Map Changer Plugin",
	version = "1.0.0",
	url = "https://www.melonsoda.tokyo/"
}

public OnPluginStart(){
	
	RegConsoleCmd("say" , Command_Say);
	
}

public Action:Command_Say(client, args){
	
	new String:text[32];
	GetCmdArg(1, text, sizeof(text));
		
	if((StrEqual(text, "!map", true))){
		ChooseMapMenu(client);
	}
}

public ChooseMapMenu(int client){
	
	/* mapchanger.txtを開く */
	new Handle:TextFile = OpenFile("mapchanger.txt", "rt");
	if(!TextFile){
		
		PrintToChat(client, "[MSS] mapchanger.txt not found.");
		return;
	}

	new String:mapname[255];
	Menu menu = new Menu(MapChangerMenuHandler);

	/* End of Fileでなければテキストファイルから行を読み込む */
	while(!(IsEndOfFile(TextFile)) && ReadFileLine(TextFile, mapname, sizeof(mapname))){

		/* メニュー生成 */
		menu.AddItem(mapname, mapname);

	}
	
	CloseHandle(TextFile);
	/* タイトル生成 */
	menu.SetTitle("MSS MapChanger:");
	menu.ExitButton = true;
	menu.Display(client, MENU_TIME_FOREVER);

}

public MapChangerMenuHandler(Menu menu, MenuAction action, int client, int param){
	
	if(action == MenuAction_Select){
		
		new String:mapname[255];

		/* メニューで選択されたマップを取得 */
		GetMenuItem(menu, param, mapname, sizeof(mapname));
		
		/* マップ変更 */
		/* サーバにないマップは無視されるため注意 */
		ServerCommand("changelevel %s", mapname);
		
	}

}