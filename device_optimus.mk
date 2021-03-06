#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

LOCAL_PATH := device/lge/p713

DEVICE_PACKAGE_OVERLAYS := device/lge/p713/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml 

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.lproj.bt.sh:system/etc/init.lproj.bt.sh \
    $(LOCAL_PATH)/config/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/vold.conf:system/etc/vold.conf \
    $(LOCAL_PATH)/config/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf 

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_7627a.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_7627a.xml:system/etc/media_codecs.xml


# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# Ramdisk
PRODUCT_COPY_FILES += \
	device/lge/p713/ramdisk/fstab.vee7:root/fstab.vee7 \
 	device/lge/p713/ramdisk/init.vee7.rc:root/init.vee7.rc \
	device/lge/p713/ramdisk/ueventd.vee7.rc:root/ueventd.vee7.rc \
	device/lge/p713/ramdisk/init.lge.p713.rc:root/init.lge.p713.rc \
	device/lge/p713/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	device/lge/p713/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	device/lge/p713/ramdisk/init.qcom.rc:root/init.qcom.rc \
	device/lge/p713/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
	device/lge/p713/ramdisk/init.qcom.sh:root/init.qcom.sh \
	device/lge/p713/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
	device/lge/p713/ramdisk/init.target.rc:root/init.target.rc \
	device/lge/p713/ramdisk/init.trace.rc:root/init.trace.rc \
	device/lge/p713/ramdisk/init.trace.rc:root/init.trace.rc \
	device/lge/p713/ramdisk/init.usb.rc:root/init.usb.rc \
	device/lge/p713/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/lge/p713/ramdisk/init.leds.nfc.rc:root/init.leds.nfc.rc \
	device/lge/p713/ramdisk/ueventd.rc:root/ueventd.rc 

# Charger
PRODUCT_PACKAGES += \
    chargerlogo \
    battery_charging_01.png \
    battery_charging_02.png \
    battery_charging_03.png \
    battery_charging_04.png \
    battery_charging_05.png \
    battery_charging_06.png \
    battery_charging_07.png \
    battery_charging_08.png \
    battery_charging_bg.png \
    battery_charging_complete.png \
    battery_charging_warning.png \
    battery_charging_warning_eng_1.png \
    battery_charging_warning_eng_2.png \
    battery_trickle_ani_01.png \
    battery_trickle_ani_02.png \
    battery_wait_ani_01.png \
    battery_wait_ani_01.png

PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

PRODUCT_PACKAGES += \
    WCN1314_qcom_wlan_nv.bin \
    WCN1314_qcom_fw.bin \
    WCN1314_cfg.dat \
    WCN1314_qcom_cfg.ini

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Wal
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# Keys
PRODUCT_PACKAGES += \
    AVRCP.kl \
    vee7_keypad \
    7k_handset.kl \
    osp3-input.kl \
    touch_dev.kl

# FM Radio
#PRODUCT_PACKAGES += \
#    FM2 \
#    FMRecord \
#    libqcomfm_jni \
#    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

PRODUCT_PACKAGES += \
    gps.msm7x27a


# light hal
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a

# Color Convert
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libc2dcolorconvert

# OMX 
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# stagefright cmdline tools
PRODUCT_PACKAGES += \
    stagefright \
    record \
    recordvideo \
    audioloop \
    stream \
    sf2 \
    codec \
    muxer

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a

# Enable Torch
PRODUCT_PACKAGES += Torch

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_PACKAGES += \
    init.target.rc \
    init.lge.usb.rc \
    init.qcom.post_boot.sh \
    init.qcom.efs.sync.sh \
    init.lge.target.sh \
    init.qcom.baseband.sh 

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.sf.hwrotation=180

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

$(call inherit-product, vendor/lge/vee7/vee7-vendor.mk)
$(call inherit-product, vendor/p713/p713-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
