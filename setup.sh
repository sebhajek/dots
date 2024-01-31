#!/usr/bin/env bash
sudo zypper refresh;
sudo zypper in curl;
sudo zypper in git fish opi nano;
sudo zypper in --no-recommends luajit;
sudo zypper in git nmcli;
sudo zypper in -tpackage --no-recommends sway-branding-upstream sway swaybar swayidle swaylock;
sudo zypper in -tpackage --no-recommends greetd gtkgreet;
sudo zypper in -tpackage --no-recommends foot tmux;

sudo zypper ar -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials/' packman-essentials;
sudo zypper refresh;
sudo zypper dup --from packman-essentials --allow-vendor-change;
sudo zypper install ffmpeg libavcodec-full vlc-codecs pipewire-aptx gstreamer-plugins-bad-codecs gstreamer-plugins-ugly-codecs gstreamer-plugins-libav gstreamer-plugins-good gstreamer-plugins-good-extra gstreamer-plugins-bad gstreamer-plugins-ugly;
sudo zypper in firefox;