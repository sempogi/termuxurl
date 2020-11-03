#!/data/data/com.termux/files/usr/bin/bash
#credit to raj for yt installer and the i forgot.(Update soon)
echo "Updating default packages"
apt update && apt -y upgrade
pkg install git
dkpg --configure -a
pkg install python
apt install python
python3 -m pip install --upgrade pip
# Install packages
pkg install -y nodejs ffmpeg 
# Get spotify-dl from npmjs
echo "[ spotifydl ] Installing spotify-dl"
npm install -g spotify-dl
# Setup app sharing script
echo "[ spotifydl ] Setting up scripts..."

if [ ! -d "$HOME/bin" ]; then #just init
    mkdir "$HOME/bin"
fi
#--------------------------------------------------------

echo "Installing Required Tools"
apt install termux-api figlet python ffmpeg -y

echo "Requesting access to storage"
termux-setup-storage
sleep 5

echo "Installing Dependencies"
pip install youtube-dl

echo "Creating the Youtube folder to download the files"
mkdir ~/storage/shared/youtube

echo "Creating youtube-dl folder for config"
mkdir -p ~/.config/youtube-dl 

#------------------------- Installing
echo "Downloading and installing termux-url-opener"
curl https://raw.githubusercontent.com/sempogi/termuxurl/main/Termuxurl -o ~/bin/termux-url-opener
dos2unix ~/bin/termux-url-opener
pip install --upgrade youtube_dl
youtube-dl --version
echo "Success!!!"
