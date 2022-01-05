#!/usr/bin/env bash

if [ ${EUID:-${UID}} != 0 ]; then
    echo "This script must be run as root."
    exit 1
fi

apt update
apt -y install python3-pip libatlas-base-dev libopenjp2-7-dev
pip3 install -r requirements.txt

echo -e "\nsetup.sh succeeded!"

exit 0
