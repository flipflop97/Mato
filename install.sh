#!/usr/bin/env sh
cd `dirname $0`
rm -rf ~/.icons/Mato/
cp -r ./ ~/.icons/Mato/
gsettings reset org.gnome.desktop.interface icon-theme
gsettings set org.gnome.desktop.interface icon-theme "Mato"
