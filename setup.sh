#!/usr/bin/env bash
RED='\033[0;31m'
REDBG='\033[41m'
BGREEN='\033[1;32m'
GREEN='\033[0;32m'
NC='\033[0m'

sudo zypper refresh;
echo -e "${BGREEN}IN BASIC UTILS${NC}"
sudo zypper -n in curl wget 7zip;
sudo zypper -n in fish opi nano;
sudo zypper -n in --no-recommends luajit;
sudo zypper -n in luarocks;
sudo zypper -n in rustup && rustup toolchain install stable;

echo -e "${REDBG}REMOVING PULSE IF IT EXISTS${NC}"
sudo zypper -n remove pulseaudio;
echo -e "${BGREEN}IN PIPEWIRE${NC}"
sudo zypper -n in pipewire pipewire-pulseaudio;

echo -e "${REDBG}REMOVING CODEC REPO IF EXIST${NC}"
sudo zypper rr packmanessentials;

echo -e "${BGREEN}IN NEW CODECS${NC}"
sudo zypper ar -cfp 99 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packmanessentials;
sudo zypper --gpg-auto-import-keys ref;
sudo zypper -n dup --from packmanessentials --allow-vendor-change;
sudo zypper -n in ffmpeg libavcodec-full vlc-codecs pipewire-aptx gstreamer-plugins-bad-codecs gstreamer-plugins-ugly-codecs gstreamer-plugins-libav gstreamer-plugins-good gstreamer-plugins-good-extra gstreamer-plugins-bad gstreamer-plugins-ugly;

bash ~/.setup-dots/dots/wm/setup.sh;
bash ~/.setup-dots/dots/tty/setup.sh;

sudo zypper -n in firefox;
sudo zypper -n in gh;
#cargo install cargo-update;

echo -e "${BGREEN}ALMOST THERE${NC}"
sudo zypper -n in neofetch;
neofetch;
read -n 1 -s;
rm -rf ~/.setup-dots/dots;
sudo shutdown -r 0;