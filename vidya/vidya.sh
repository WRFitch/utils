#!/bin/bash

#runs videogames with whatever annoying terminal parameters they want. I miss steam. 

GAME=$1 
STEAM_APPS_DIR=~/.local/share/Steam/steamapps
USR_GAMES_DIR=~/Documents/games
SUPPORTED_GAMES="
celeste
quake"

show_help(){
	echo "vidya steam - open steam" 
	echo "vidya game - run certain videogames. Currently supported titles include: $SUPPORTED_GAMES"
}

select_game(){
	if [ -z "$GAME" ]; then show_help; return; fi

	echo "$GAME"

	if [ $GAME == "steam" ]; then 
		steam
	elif [ $GAME == "quake" ]; then
		quakespasm -basedir $STEAM_APPS_DIR/common/Quake
	elif [ $GAME == 'celeste' ]; then 
		$USR_GAMES_DIR/celeste-linux/Celeste
	else 
		show_help
	fi
}

echo "$GAME"
select_game
