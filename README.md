Read Me First
==============


How to build UnityROM-2 for Jewel ( HTC Evo 4g LTE )

You do not need to have the device to do it this way.

FIRST RUN ONLY (everything up to dash marks)

Install your Linux Distro ( Ubuntu 14.04.1 LTS x64 for me.)

Setup Build Environment

REMEMBER: CHANGE THE GIT CONFIG TO YOUR INFO FIRST!!! (IF YOU USE SCRIPTS FOR THIS, DO THE SAME TO "CMRepoSetup.sh" BEFORE USING IT OR "EnvironmentSetup.sh")

sudo apt-get install git gnupg flex bison gperf build-essential zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 bison build-essential curl flex git gnupg gperf libesd0-dev libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk phablet-tools pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev && mkdir ~/bin && PATH=~/bin:$PATH && mkdir -p ~/android/system && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && git config --global user.email "you@email.com" && git config --global user.name "YourName" && cd ~/android/system && repo init -u git://github.com/LiquidSmokeX64/UnityROM-2-REPO.git -b master

Run initial sync

cd ~/android/system && repo sync

----------------------------------------------------------------------------------------------------
UnityROM 3.1 Conversion... This WILL take a minute or two...

cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick ad7920a41a9824d05da08667bf841862259d1532 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick 32cc79939a230c9527477bd935b07fa0951a1c81 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick 83a6320cd98ed1b7647eb5a93baa73e2959d9b79 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick ebe3135d6a135eaabaceb1928d79a219e9569fe0 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick 762b557345b90de16ec818c00d82bba574916ebe && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick 1bf8abb3bc1e7930eea018ca2ff215ccc7c05251 && cd ~/android/system/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-12.1 && git cherry-pick 3ddc10f0512b4197243302bc61d16d186850fb && && cd ~android/system

Build ROM NOW

cd ~/android/system && source build/envsetup.sh && breakfast bacon && croot && brunch bacon

Note: In some cases if you attempt to build for a device you do not have all dependencies set in roomservice.xml, it will notice this and attempt to download them automatically. 

If you want to add my personal commits for UnityROM Conversion to your build you will need the additional cherrypick commands before building but after RepoSync.

THAT'S IT!

If you choose to use my build scripts instead. place them all in your Home folder, open a terminal, then "chmod 755 SetPerms.sh". Then Run SetPerms.sh to set the executable permissions on all the rest of the sripts automatically.

Some scripts are linked to each other to create a single command for multiple things.

The Main ones you will call on (though you still need the rest) are EnvironmentSetup.sh, RepoSync.sh, Cleanup.sh, GetCommits.sh, and BuildCM-jewel.sh. 

ENJOY.

