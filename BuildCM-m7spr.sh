#!/bin/bash

cd ~/android/system && ./vendor/cm/get-prebuilts && cd ~/android/system/ && source build/envsetup.sh && breakfast m7spr && croot && brunch m7spr
