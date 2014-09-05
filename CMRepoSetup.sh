#!/bin/bash

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && git config --global user.email "your@email.com" && git config --global user.name "YourName" && cd ~/android/system && repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0


