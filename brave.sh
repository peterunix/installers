#!/bin/sh

doas apt install apt-transport-https curl

doas curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|doas tee /etc/apt/sources.list.d/brave-browser-release.list

doas apt update

doas apt install brave-browser

