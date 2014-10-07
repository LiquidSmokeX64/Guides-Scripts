#!/bin/bash

cd ~/android/system && ./vendor/cm/get-prebuilts && cd ~/android/system/ && source build/envsetup.sh && breakfast hammerhead && croot && brunch hammerhead
