Read Me First
==============


How to build Cyanogenmod 11 for any device. (Commits I only can confirm working on jewel)

You do not need to have the device to do it this way.

FIRST RUN ONLY (everything up to dash marks)

Install your Linux Distro ( Mint 17 for me, but I know how to setup just about any main distro fo building, Mint is just easiest & fastest.)

Setup Build Environment

REMEMBER: CHANGE THE GIT CONFIG TO YOUR INFO FIRST!!! (IF YOU USE SCRIPTS FOR THIS, DO THE SAME TO "CMRepoSetup.sh" BEFORE USING IT OR "EnvironmentSetup.sh")

sudo apt-get install git gnupg flex bison gperf build-essential zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 bison build-essential curl flex git gnupg gperf libesd0-dev libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk phablet-tools pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev && mkdir ~/bin && PATH=~/bin:$PATH && mkdir -p ~/android/system && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && git config --global user.email "you@email.com" && git config --global user.name "YourName" && cd ~/android/system && repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Insert my roomservice.xml

Navigate to ~/android/system./repo with a file browser. (Ctrl+H is needed)
Place my local_manifests folder in there.

Run initial sync

cd ~/android/system && repo sync

----------------------------------------------------------------------------------------------------
GET COMMITS FOR GCC 4.8 & O3

cd && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick f60de1a1e440c2fe8ab40c4534af5b3c83c8e5a2 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick fd236b99cc96bc26df51b435a71f3811aa88ead9 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 38b06acaf00c4443717cf2cead95a6d86284b575 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 7b3fbbbb7265e4c2e9adf627be0a495ca770144c && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 7573e0af8ef29876229363def935d182fd5059a5 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick c2166ec1ad96068c9325816878b2cee889e6a0f1 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 9c594e068bf3e58c021029fc111fa70aedcb4548 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 0ca6d6964a8455c451c5b23b935432cc06762d1e && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick b0b2034a48e0ac8b353fec54725051763c7d04fb && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 23b0328715482bf3386055cb6bce33f30490f241 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick b397aa0a6778935ce4f45ad95f654b8056fa52a4 && cd ~/android/system/external/bash/ && git fetch https://github.com/LiquidSmokeX64/android_external_bash cm-11.0 && git cherry-pick 4c49cb0d152ec5bbc1867e7c0f84cbe0567c9a18 && cd ~/android/system/system/vold/ && git fetch https://github.com/LiquidSmokeX64/android_system_vold cm-11.0 && git cherry-pick 9814240033b3d1e86835040f57b6799ba4e972ae && cd ~/android/system/kernel/htc/msm8960/ && git fetch https://github.com/LiquidSmokeX64/android_kernel_htc_msm8960 cm-11.0 && git cherry-pick 685aa0750d2491abe3f0633ea7eaadc07b57e24a && cd ~/android/system/external/oprofile/ && git fetch https://github.com/LiquidSmokeX64/android_external_oprofile cm-11.0 && git cherry-pick 4ac7e8024946467dac8f8404065c37c80e3262fb && cd

Build ROM NOW

cd ~/android/system/vendor/cm && ./get-prebuilts && cd ~/android/system && repo sync && source build/envsetup.sh && breakfast jewel && croot && brunch jewel

Note: In some cases if you attempt to build for a device you do not have all dependencies set in roomservice.xml, it will notice this and attempt to download them automatically. 

If you want to add my personal commits for GCC 4.8 and O3 to your build you will need the additional cherrypick commands before building but after RepoSync.

THAT'S IT!

If you choose to use my build scripts instead. place them all in your Home folder, open a terminal, then "chmod 755 SetPerms.sh". Then Run SetPerms.sh to set the executable permissions on all the rest of the sripts automatically.

Some scripts are linked to each other to create a single command for multiple things.

The Main ones you will call on (though you still need the rest) are EnvironmentSetup.sh, RepoSync.sh, Cleanup.sh, GetCommits.sh, and BuildCM-jewel.sh. 

ENJOY.

