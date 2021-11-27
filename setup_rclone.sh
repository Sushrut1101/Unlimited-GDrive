#!/bin/bash
 
 # Colours
 ORIGINAL=`echo -en "\e[0m"`
 ORANGE=`echo -en "\e[33m"`
 AQUA=`echo -en "\e[36m"`
 LIGHTGREEN=`echo -en "\e[92m"`

#-----------------------
# Variables
#-----------------------

# Remote Name
if [ -z "$REMOTE" ]; then
REMOTE="" # Name of Remote You want
fi

# Team Drive
if [ -z "$TEAM_DRIVE" ]; then
TEAM_DRIVE="" # "True" or "False"
fi

# Client ID
if [ -z "$CLIENT_ID" ]; then
CLIENT_ID="" # Your Google's Client ID
fi

# Client Secret
if [ -z "$CLIENT_SECRET" ]; then
CLIENT_SECRET="" # The Client Secret of your Client ID
fi

# Access Token
if [ -z "$ACCESS_TOKEN" ]; then
ACCESS_TOKEN="" # Your Access Token
fi

# Drive Folder ID
if [ -z "$DRIVE_FOLDER_ID" ]; then
DRIVE_FOLDER_ID="" # Folder ID of your Drive you want to use as rclone root
fi

# Index Link
if [ -z "$INDEX_LINK" ]; then
INDEX_LINK="None" # Index Link for that GDrive (If any) (eg: *.*.workers.dev/0:)
fi

echo "${LIGHTGREEN}------------------------------------------------"
echo "${ORANGE}A SIMPLE SCRIPT TO SETUP RCLONE USING MY CONFIGS"
echo "${LIGHTGREEN}------------------------------------------------"
echo ""
echo "$ORIGINAL"
sleep 2
echo "MAKE SURE YOU HAVE SUDO PRIVILLAGES"

echo "INSTALLING TOOLS"
echo ""
echo ""
curl https://rclone.org/install.sh | sudo bash
echo ""
echo ""
echo "TOOLS INSTALLATION COMPLETED"
echo ""
mkdir -p ~/.config
mkdir -p ~/.config/rclone/ > /dev/null 2>&1
touch ~/.config/rclone/rclone.conf > /dev/null 2>&1
echo "${LIGHTGREEN}------------------------"
echo "${ORANGE}SETTING UP CONFIGS:"
echo "[$REMOTE]">> ~/.config/rclone/rclone.conf
sleep 2
echo "type = drive">> ~/.config/rclone/rclone.conf
sleep 2
echo "${AQUA}Team Drive = $TEAM_DRIVE"
echo "client_id = $CLIENT_ID">> ~/.config/rclone/rclone.conf
sleep 2
echo "${AQUA}Setup ID = True "
echo "client_secret = $CLIENT_SECRET">> ~/.config/rclone/rclone.conf
sleep 2
echo "${AQUA}Setup Secret = True"
echo "scope = drive">> ~/.config/rclone/rclone.conf
sleep 2
echo "${AQUA}Setup Folder ID = True"
echo "token = $ACCESS_TOKEN" >> ~/.config/rclone/rclone.conf
sleep 2
echo "${AQUA}Setup Token = True"
echo "team_drive = $DRIVE_FOLDER_ID">> ~/.config/rclone/rclone.conf
sleep 2
echo "${LIGHTGREEN}------------------------"
echo ""
echo "${LIGHTGREEN}------------------------"
echo "${ORANGE}Setup Status : Completed"
echo "${LIGHTGREEN}------------------------"
echo "$ORIGINAL"
sleep 3
echo "${AQUA}==============================================" && echo "${ORIGINAL}"
sleep 1
echo "REMOTE NAME: $REMOTE"
sleep 2
echo "DRIVE ROOT LINK: https://drive.google.com/drive/u/0/folders/$DRIVE_FOLDER_ID"
sleep 2
echo "INDEX LINK: $INDEX_LINK"
sleep 2
echo "Example: rclone copy <path of file to upload> $REMOTE:/<directory in gdrive to upload>"
sleep 1
echo "For Help: rclone help"
sleep 1
echo "Visit https://rclone.org/drive/ for more information"
sleep 1
echo "${AQUA}==============================================" && echo "${ORIGINAL}"
sleep 3
echo ""
echo "${LIGHTGREEN}--------------------"
echo "${ORANGE}By @Sushrut1101"
echo "${LIGHTGREEN}--------------------"
echo ""
echo "${ORIGINAL}"
