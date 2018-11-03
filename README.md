# MSS_Map_Changer_Plugin
[MelonSoda Server](https://www.melonsoda.tokyo/)で作成したマップ変更をするためのプラグインです。  
通常のマップ、Steam Workshopのマップに対応しています。  
  
[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=862P2CYZVBPMS)

# How to setup
プラグインを利用するには`Metamod:Source`と`SourceMod`を導入する必要があります。  
Clone or DownloadからDownload ZIPをクリックしダウンロードします。   
ダウンロードしたファイルを解凍します。  
`addons/sourcemod`と`mapchanger.txt`をサーバに保存します。  
以上でセットアップは完了です。  

# How to use
チャットから利用できるコマンド一覧（SayCommand）
- `!map`
- - `マップ一覧を表示`

# Note
Steam Workshop製のマップもマップ名のみ`mapchanger.txt`に書いてください(aim_mapなどのように)。
Valve製の旧マップを`mapchanger.txt`に追加したい場合のみ`workshop/626513993/de_nuke`のように明示的に書いてください。  
選択したマップがサーバ上にない場合はエラー表示されず何も起きません。  
