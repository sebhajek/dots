#!/usr/bin/env fish
sudo zypper refresh;
sudo zypper -n in curl wget;
sudo zypper -n in git fish opi nano;
sudo zypper -n in --no-recommends luajit;
sudo zypper -n in -tpackage --no-recommends sway-branding-upstream sway swaybar swayidle swaylock;
sudo zypper -n in -tpackage --no-recommends greetd gtkgreet;
sudo zypper -n in -tpackage --no-recommends foot tmux;

sudo zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials;
sudo zypper refresh;
sudo zypper -n dup --from packman-essentials --allow-vendor-change;
sudo zypper -n in ffmpeg libavcodec-full vlc-codecs pipewire-aptx gstreamer-plugins-bad-codecs gstreamer-plugins-ugly-codecs gstreamer-plugins-libav gstreamer-plugins-good gstreamer-plugins-good-extra gstreamer-plugins-bad gstreamer-plugins-ugly;
sudo zypper -n in firefox;
sudo zypper -n in gh;

fish ~/.setup-dots/dots/wm/setup.sh;