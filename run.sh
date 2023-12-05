#!/bin/bash

Danger='\033[0;31m'		# Red Color
Success='\033[0;32m'	# Green Color
Warning='\033[1;33m'	# Yellow Color
NC='\033[0m'			# No Color

clear

printf "\n"

printf "Select Project: \n\n"
printf "1) [PROJECT1_NAME]\n"
printf "2) [PROJECT2_NAME]\n"

printf "\n"

read -p ": " answer

clear

if [[ "$answer" == 1 ]]; then
	printf "${Success} starting [PROJECT1_NAME] project.... ${NC} \n\n"
	cd [PROJECT1_WORKING_DIRECTORY_PATH]
	[COMMAND_TO_RUN_PROJECT]				# eg. php artisan serve

elif [[ "$answer" == 2 ]]; then
	printf "${Success} starting [PROJECT2_NAME] project.... ${NC} \n\n"
	cd [PROJECT2_WORKING_DIRECTORY_PATH]
	[COMMAND_TO_RUN_PROJECT]				# eg. php artisan serve

else
	printf "${Warning} EXIT: please enter valid input. ${NC} \n\n"
	exit
fi
