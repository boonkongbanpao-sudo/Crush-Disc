#!/data/data/com.termux/files/usr/bin/bash

pkg update -y && pkg upgrade -y
pkg install -y python git curl

pip install --upgrade pip
pip install -U discord.py

rm -rf $HOME/crush-disc
mkdir -p $HOME/crush-disc
cd $HOME/crush-disc || exit

curl -fsSL https://raw.githubusercontent.com/boonkongbanpao-sudo/Crush-Disc/main/FZT.py -o main.py

chmod +x main.py
python main.py
