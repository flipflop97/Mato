#!/bin/bash
pushd `dirname $0` > /dev/null
rm -rf ~/.icons/Mato/
cp -r ./ ~/.icons/Mato/
gsettings reset org.gnome.desktop.interface icon-theme
gsettings set org.gnome.desktop.interface icon-theme "Mato"
