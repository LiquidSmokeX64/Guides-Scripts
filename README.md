Read Me First
==============


How to build Cyanogenmod 11 for any device. (Conversion I only can confirm working on jewel & m7spr)

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
UnityROM Conversion...

cd && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-11.0 && git cherry-pick 71c8b8c0c93e25b9c5400a7d3b5119cdd5eec2c0 && cd ~/android/system/device/htc/jewel/ && git fetch https://github.com/LiquidSmokeX64/android_device_htc_jewel cm-11.0 && git cherry-pick 667f6db6f3892f50584439eb5980029b184ea3d9 && cd ~/android/system/device/htc/m7-common && git fetch https://github.com/LiquidSmokeX64/android_device_htc_m7-common cm-11.0 && git cherry-pick 2a8b684d49e45817a2fcfb38275d2f541fa5ae04 && cd ~/android/system/device/htc/m7spr/ && git fetch https://github.com/LiquidSmokeX64/android_device_htc_m7spr cm-11.0 && git cherry-pick 46e53a71ef4b292e2a22fd15e6f0840f1a11d09c && cd ~/android/system/device/htc/s4-common/ && git fetch https://github.com/LiquidSmokeX64/android_device_htc_s4-common cm-11.0 && git cherry-pick 7ae8d981f65a5b297c7e23fc8ce6de3372cc73f0 && cd ~/android/system/external/bash/ && git fetch https://github.com/LiquidSmokeX64/android_external_bash cm-11.0 && git cherry-pick 93c1a3180ab1c273851f6884e69fca2ccc4d4167 && cd ~/android/system/system/vold/ && git fetch https://github.com/LiquidSmokeX64/android_system_vold UnityROM-2 && git cherry-pick 59dcd71f16bf4105099d8287808c66aa7e6bf8fc && cd ~/android/system/kernel/htc/msm8960/ && git fetch https://github.com/LiquidSmokeX64/android_kernel_htc_msm8960 cm-11.0 && git cherry-pick ffe3def1b2b466bf77179f0837aa96e90412501d && cd ~/android/system/external/oprofile/ && git fetch https://github.com/LiquidSmokeX64/android_external_oprofile cm-11.0 && git cherry-pick cfc8c2d0ed64d141ed7d39d7f3a6b9ad9366e941 && cd ~/android/vendor/cm/ && git fetch https://github.com/LiquidSmokeX64/android_vendor_cm cm-11.0 && git cherry-pick 29140dc6cef539f90d6c28338b0891eff68023d7

Build ROM NOW

cd ~/android/system/vendor/cm && ./get-prebuilts && cd ~/android/system && repo sync && source build/envsetup.sh && breakfast jewel && croot && brunch jewel

Note: In some cases if you attempt to build for a device you do not have all dependencies set in roomservice.xml, it will notice this and attempt to download them automatically. 

If you want to add my personal commits for UnityROM Conversion to your build you will need the additional cherrypick commands before building but after RepoSync.

THAT'S IT!

If you choose to use my build scripts instead. place them all in your Home folder, open a terminal, then "chmod 755 SetPerms.sh". Then Run SetPerms.sh to set the executable permissions on all the rest of the sripts automatically.

Some scripts are linked to each other to create a single command for multiple things.

The Main ones you will call on (though you still need the rest) are EnvironmentSetup.sh, RepoSync.sh, Cleanup.sh, GetCommits.sh, and BuildCM-jewel.sh. 

ENJOY.

