#!/usr/bin/env fish
sudo zypper refresh;
sudo zypper in --non-interactive curl;
sudo zypper in --non-interactive git fish opi nano;
sudo zypper in --no-recommends luajit;
sudo zypper in --non-interactive nmcli;
sudo zypper in -tpackage --no-recommends --non-interactive sway-branding-upstream sway swaybar swayidle swaylock;
sudo zypper in -tpackage --no-recommends --non-interactive greetd gtkgreet;
sudo zypper in -tpackage --no-recommends --non-interactive foot tmux;

sudo zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials;
sudo zypper refresh;
sudo zypper dup --from packman-essentials --allow-vendor-change;
sudo zypper in --non-interactive ffmpeg libavcodec-full vlc-codecs pipewire-aptx gstreamer-plugins-bad-codecs gstreamer-plugins-ugly-codecs gstreamer-plugins-libav gstreamer-plugins-good gstreamer-plugins-good-extra gstreamer-plugins-bad gstreamer-plugins-ugly;
sudo zypper in --non-interactive firefox;
sudo zypper in --non-interactive gh;

fish ~/.setup-dots/dots/wm/setup.sh