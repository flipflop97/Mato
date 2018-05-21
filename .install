#!/usr/bin/env sh

cd `dirname $0`

## If .icons folder doesn't exist, create it.
mkdir -p ~/.icons

## Replace old Mato folder by the new one
rm -rf ~/.icons/Mato/
cp -r ./ ~/.icons/Mato/

## Set Mato icon theme
gsettings reset org.gnome.desktop.interface icon-theme
gsettings set org.gnome.desktop.interface icon-theme "Mato"
