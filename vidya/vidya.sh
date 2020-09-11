#!/bin/bash

#runs videogames with whatever annoying terminal parameters they want. I miss steam. 

GAME=$1 
STEAM_APPS_DIR=~/.local/share/Steam/steamapps
USR_GAMES_DIR=~/Documents/games
SUPPORTED_GAMES="
celeste
quake
art_sqool
A Short Hike (hike)

YAHTZEE'S DEV DIARY
Battle Royale TV (brtv)
The Life of Erich Zann (ezann)
Casey Joint (leethax)
Bunker Bustin (bunkerbustin)"

show_help(){
	echo "vidya steam - open steam" 
	echo "vidya game - run certain videogames. Currently supported titles include: $SUPPORTED_GAMES

Game commands are given in brackets if the game title is longer than a word."
}

select_game(){
	if [ -z "$GAME" ]; then show_help; return; fi
	
	case $GAME in 
	"steam")
		steam
		;;
	"celeste")
                $USR_GAMES_DIR/celeste-linux/Celeste
                ;;
	"quake")
		quakespasm -basedir $STEAM_APPS_DIR/common/Quake
		;;
	"art_sqool")
		wine $USR_GAMES_DIR/art_sqool/ART\ SQOOL.exe
		;;
	"hike")
		$USR_GAMES_DIR/AShortHike/AshortHike.x86_64
		;;
	"brtv")
		wine $USR_GAMES_DIR/devdiary/brtv/devdiary2.exe
		;;
	"ezann")
		wine $USR_GAMES_DIR/devdiary/ezann/devdiary4.exe
		;;
	"leethax")
		wine $USR_GAMES_DIR/devdiary/leethax/devdiary8.exe
		;;
	"bunkerbustin")
		wine $USR_GAMES_DIR/devdiary/bunkerbustin/devdiary12.exe
		;;
	*)
		show_help
		;;
	esac
}

select_game

