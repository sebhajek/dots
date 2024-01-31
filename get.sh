#!/usr/bin/env bash

mkdir -p ~/.setup-dots/dots;
cd ~/.setup-dots/dots;
git clone https://github.com/sebhajek/dots.git ~/.setup-dots/dots;
git submodule update --recursive --remote;

bash ~/.setup-dots/dots/setup.sh;