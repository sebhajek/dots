#!/usr/bin/env bash

mkdir -p ~/.setup-dots/dots;
cd ~/.setup-dots/dots;
sudo zypper in -y git fish;
git clone https://github.com/sebhajek/dots.git ~/.setup-dots/dots;
git submodule update --init --recursive;
git submodule update --recursive --remote;

fish ~/.setup-dots/dots/setup.sh;

rm -rf ~/setup-dots/dots;
rm -rf ~/setup-dots/fonts;