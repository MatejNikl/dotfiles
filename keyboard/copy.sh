#!/usr/bin/zsh

EVDEV="rules/evdev.xml"
CZ="symbols/cz"
US="symbols/us"

SYSDIR="/usr/share/X11/xkb"

cp -i ${SYSDIR}/${EVDEV} ${PWD}/${EVDEV}.orig
cp -i ${SYSDIR}/${CZ}    ${PWD}/${CZ}.orig
cp -i ${SYSDIR}/${US}    ${PWD}/${US}.orig

sudo cp -i ${PWD}/${EVDEV} ${SYSDIR}/${EVDEV}
sudo cp -i ${PWD}/${CZ}    ${SYSDIR}/${CZ}
sudo cp -i ${PWD}/${US}    ${SYSDIR}/${US}

exit $?
