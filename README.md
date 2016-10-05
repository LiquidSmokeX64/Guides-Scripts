|** How to build Project X - ROM (Pre-Alpha) for OnePlus 3

|** Install your Linux Distro (Ubuntu 16.04.1 LTS x64 for me)

|** Setup Build Environment

sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip android-tools-adb android-tools-fastboot curl flex git gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop openjdk-8-jdk openjdk-8-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev flex bison texinfo gcc gperf patch libtool automake g++ libncurses5-dev gawk subversion expat libexpat1-dev python-all-dev libgcc1:i386 bc libcloog-isl-dev libcap-dev autoconf libgmp-dev gcc-multilib g++-multilib pkg-config libmpc-dev libmpfr-dev phablet-tools lib32readline6-dev libwxgtk3.0-dev maven

sudo ln -s /usr/include/asm-generic /usr/include/asm;

cd && mkdir ~/bin && PATH=~/bin:$PATH 

mkdir -p ~/android/UR5 

|** Install Repo

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo 

cd ~/android/UR5

|** Setup Git

git config --global user.email "your@email.com" && git config --global user.name "YourName"

cd ~/android/UR5 

|** Initialize the Repo

repo init -u git://github.com/CyanogenMod/android.git -b cm-14.0 

cd ~/android/UR5

|** Get the roomservice.xml

mkdir -p ~/android/UR5/.repo/local_manifests && curl -L -o .repo/local_manifests/roomservice.xml -O -L https://raw.github.com/LiquidSmokeX64/Guides-Scripts/master/roomservice.xml 

cd ~/android/UR5

|** Sync the Repo

repo sync --force-sync

|** Setup Jack Server (if needed)

export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx7896m"
out/host/linux-x86/bin/jack-admin kill-server
out/host/linux-x86/bin/jack-admin start-server

|** Build Images

cd ~/android/UR5 && make clean && make clobber && source build/envsetup.sh && breakfast oneplus3 && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 50G && croot && make bootimage

cd ~/android/UR5 && make clean && make clobber && source build/envsetup.sh && breakfast oneplus3 && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 50G && croot && make systemimage

cd ~/android/UR5 && make clean && make clobber && source build/envsetup.sh && breakfast oneplus3 && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 50G && croot && make userdataimage

cd ~/android/UR5 && make clean && make clobber && source build/envsetup.sh && breakfast oneplus3 && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 50G && croot && make cacheimage

cd ~/android/UR5 && make clean && make clobber && source build/envsetup.sh && breakfast oneplus3 && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 50G && croot && make recoveryimage

|** Build Full-ROM.zip

cd ~/android/UR5 && make clean && make clobber && source build/envsetup.sh && breakfast oneplus3 && export USE_CCACHE=1 && prebuilts/misc/linux-x86/ccache/ccache -M 50G && croot && brunch oneplus3

|** ENJOY.
