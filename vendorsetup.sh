#!/bin/bash
# Cloning vendor repos
rm -rf vendor/lineage
git clone --depth 1 https://github.com/custom-crdroid/vendor_crdroid.git -b 15.0 vendor/lineage
rm -rf vendor/addons
git clone --depth 1 https://github.com/custom-crdroid/vendor_addons.git -b 15.0 vendor/addons

# Cloning framework repos
rm -rf frameworks/libs/systemui
git clone --depth 1 https://github.com/custom-crdroid/android_frameworks_libs_systemui.git -b 15.0 frameworks/libs/systemui
rm -rf frameworks/base
git clone --depth 1 https://github.com/custom-crdroid/frameworks_base.git -b 15.0 frameworks/base
rm -rf frameworks/av
git clone --depth 1 https://github.com/custom-crdroid/frameworks_av.git -b 15.0 frameworks/av
rm -rf frameworks/native
git clone --depth 1 https://github.com/custom-crdroid/frameworks_native.git -b 15.0 frameworks/native
rm -rf vendor/pixel-framework
git clone --depth 1 https://github.com/custom-crdroid/android_vendor_pixel-framework.git -b 15.0 vendor/pixel-framework

# Cloning packages_apps repos 
rm -rf packages/apps/Launcher3
git clone --depth 1 https://github.com/custom-crdroid/packages_apps_Launcher3.git -b 15.0 packages/apps/Launcher3
rm -rf packages/apps/crDroidSettings
git clone --depth 1 https://github.com/custom-crdroid/packages_apps_crDroidSettings.git -b 15.0 packages/apps/crDroidSettings
rm -rf packages/apps/Settings
git clone --depth 1 https://github.com/custom-crdroid/android_packages_apps_Settings.git -b 15.0 packages/apps/Settings
rm -rf packages/apps/GameSpace
git clone --depth 1 https://github.com/custom-crdroid/packages_apps_GameSpace.git -b 15.0 packages/apps/GameSpace
rm -rf packages/apps/Updater
git clone --depth 1 https://github.com/custom-crdroid/android_packages_apps_Updater.git -b 15.0 packages/apps/Updater
rm -rf packages/resources/devicesettings
git clone --depth 1 https://github.com/custom-crdroid/packages_resources_devicesettings.git -b 15.0 packages/resources/devicesettings
rm -rf packages/apps/OmniStyle
git clone --depth 1 https://github.com/custom-crdroid/packages_apps_OmniStyle.git -b 15.0 packages/apps/OmniStyle

# Cloning system repos
rm -rf system/libhwbinder
git clone --depth 1 https://github.com/custom-crdroid/system_libhwbinder.git -b 15.0 system/libhwbinder

# Finished continue with build
