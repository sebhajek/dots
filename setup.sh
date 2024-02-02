#!/usr/bin/env bash
sudo zypper refresh;
sudo zypper -n in curl wget 7zip;
sudo zypper -n in git fish opi nano;
sudo zypper -n remove pulseaudio;
sudo zypper -n in pipewire pipewire-pulseaudio;
sudo zypper -n in --no-recommends luajit;
sudo zypper -n in -tpackage --no-recommends sway-branding-upstream sway swayidle swaylock waybar dunst; #swaybar
sudo zypper -n in -tpackage --no-recommends greetd gtkgreet;
sudo zypper -n in -tpackage --no-recommends foot tmux;

sudo zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials --gpg-auto-import-keys;
sudo zypper refresh;
sudo zypper -n dup --from packman-essentials --allow-vendor-change;
sudo zypper -n in ffmpeg libavcodec-full vlc-codecs pipewire-aptx gstreamer-plugins-bad-codecs gstreamer-plugins-ugly-codecs gstreamer-plugins-libav gstreamer-plugins-good gstreamer-plugins-good-extra gstreamer-plugins-bad gstreamer-plugins-ugly;
sudo zypper -n in firefox;
sudo zypper -n in gh;
sudo zypper -n in rustup && rustup toolchain install stable;
sudo zypper -n in openssl;
#cargo install cargo-update;

bash ~/.setup-dots/dots/wm/setup.sh;