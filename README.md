Read Me First
==============

How to build UnityROM-4.3 for OnePlus One

Install your Linux Distro

Setup Build Environment

sudo apt-get install bison build-essential curl flex git gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk openjdk-7-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev bison g++-multilib git gperf libxml2-utils make python-networkx zlib1g-dev:i386 zip vlc android-tools-adb android-tools-fastboot && sudo add-apt-repository ppa:webupd8team/java && sudo apt-get update && sudo apt-get install oracle-java8-installer && sudo update-java-alternatives -s java-8-oracle && sudo apt-get install oracle-java8-set-default && cd && mkdir ~/bin && PATH=~/bin:$PATH && mkdir -p ~/android/UR4 && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && cd ~/android/UR4

Setup CM Branch & get the roomservice.xml

git config --global user.email "your@email.com" && git config --global user.name "YourName" && cd ~/android/UR4 && repo init -u git://github.com/CyanogenMod/android.git -b cm-13.0 && mkdir -p ~/android/Ur4/.repo/local_manifests && curl -L -o .repo/local_manifests/roomservice.xml -O -L https://raw.github.com/LiquidSmokeX64/Guides-Scripts/master/roomservice.xml && cd ~/android/UR4

Sync up the Repo

cd ~/android/UR4 && repo init -u git://github.com/CyanogenMod/android.git -b cm-13.0 && mkdir -p ~/android/UR4/.repo/local_manifests && curl -L -o .repo/local_manifests/roomservice.xml -O -L https://raw.github.com/LiquidSmokeX64/Guides-Scripts/master/roomservice.xml && cd ~/android/UR4
cd ~/android/UR4 && repo sync && cd ~/android/UR4

cd ~/android/UR4 && repo sync && cd ~/android/UR4

UnityROM-4 Commits...

cd ~/android/UR4/build/ && git fetch https://github.com/LiquidSmokeX64/android_build cm-13.0 && git cherry-pick 3929eef53258448b5161d8f923fa0b7309f5e8db
cd ~/android/UR4/packages/apps/Settings && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_Settings cm-13.0 && git cherry-pick 333ccd29219e00b76bc0fe8b640421e795786a0a
cd ~/android/UR4/vendor/cm && git fetch https://github.com/LiquidSmokeX64/android_vendor_cm cm-13.0 && git cherry-pick b8319af13940205bd171becc96403f058352fa28
cd ~/android/UR4/device/oneplus/bacon && git fetch https://github.com/LiquidSmokeX64/android_device_oneplus_bacon cm-13.0 && git cherry-pick d4cbfc721afb64fde6c60a157b411e7b08939b92
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick d646941ecf10c12c542d35eb9d3e4e82b513e127
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick da09f22163af7cf9f6bb501a3a1c23c313f957fb
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick af505b604d81b8c99a815394bcb10d3ea421d1b6
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick 076b2742aeab9bdb63269e0da3474723b5a1fc8c
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick 1c1ae1e0fe63786229fffbb450e463ff84cf40d3
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick 1ace6d6085b245b25b73bc7bf291cf49f02f96c6
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick e3f8a17e444980ede793752c6039544197c1b50c
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick 962643e646431278684b99c3328bae9d2f656a0f
cd ~/android/UR4/packages/apps/CMUpdater && git fetch https://github.com/LiquidSmokeX64/android_packages_apps_CMUpdater cm-13.0 && git cherry-pick 8048afac1d53b27d720cdcd971d44449a3d05ebe
cd ~/android/UR4/kernel/oneplus/msm8974 && git fetch https://github.com/LiquidSmokeX64/URKernel-4 cm-13.0 && git cherry-pick ceef6d576a6c7faab59a136bf1b6e75df1bca6d7
cd ~/android/UR4/kernel/oneplus/msm8974 && git fetch https://github.com/LiquidSmokeX64/URKernel-4 cm-13.0 && git cherry-pick 605a1325218c3e1ca72d3c3e4cb9ca7c51e3b1c3
cd ~/android/UR4/kernel/oneplus/msm8974 && git fetch https://github.com/LiquidSmokeX64/URKernel-4 cm-13.0 && git cherry-pick aad6cd4c481c600dd6a6219406f8d65217d0520f
cd ~/android/UR4/kernel/oneplus/msm8974 && git fetch https://github.com/LiquidSmokeX64/URKernel-4 cm-13.0 && git cherry-pick 2bf0cfa401af498c19dd3660364c86f522c5fde7
cd ~/android/UR4/kernel/oneplus/msm8974 && git fetch https://github.com/LiquidSmokeX64/URKernel-4 cm-13.0 && git cherry-pick 79154946df1476b871b7a387b0897115110b0143
cd ~/android/UR4/device/oneplus/bacon && git fetch https://github.com/LiquidSmokeX64/android_device_oneplus_bacon cm-13.0 && git cherry-pick 1cf44922bf3c54d379943286f92c56f4682681c2
cd ~/android/UR4/vendor/cm && git fetch https://github.com/LiquidSmokeX64/android_vendor_cm cm-13.0 && git cherry-pick c016b950fe3e180b3e740b21ba278ce489e8b74e
cd ~/android/UR4/frameworks/base && git fetch https://github.com/sultanxda/android_frameworks_base cm-12.1 && git cherry-pick 0cbd4a88767d78640b7dd391674575f7d5e517e6

Build ROM and/or Kernel NOW

cd ~/android/UR4 && make clean && export USE_CCACHE=1 && source build/envsetup.sh && breakfast bacon && croot && make bootimage
cd ~/android/UR4 && make clean && export USE_CCACHE=1 && source build/envsetup.sh && breakfast bacon && croot && brunch bacon

ENJOY.
