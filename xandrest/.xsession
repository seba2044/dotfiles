#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#
xset -b
/bin/bash --login -i ~/.xinitrc

