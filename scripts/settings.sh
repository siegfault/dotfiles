#!/usr/bin/env bash

gsettings set org.gnome.desktop.input-sources xkb-options   "['caps:ctrl_modifier']"
gsettings set org.gnome.desktop.interface     clock-format  12h
gsettings set org.gnome.shell                 favorite-apps "['google-chrome.desktop', 'slack.desktop', 'org.gnome.Terminal.desktop', 'spotify_spotify.desktop', 'org.gnome.Nautilus.desktop']"
