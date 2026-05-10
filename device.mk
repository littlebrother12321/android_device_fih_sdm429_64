#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 28

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    dmic1_to_headset_recv_off.sh \
    dmic1_to_headset_recv_on.sh \
    dmic2_to_headset_recv_off.sh \
    dmic2_to_headset_recv_on.sh \
    fqcaudioloopback.sh \
    headset_mic_to_headset_recv_off.sh \
    headset_mic_to_headset_recv_on.sh \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.crashdata.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.sh \
    init.qcom.wifi.sh \
    init.qti.fm.sh \
    init.qti.ims.sh \
    init.qti.qseecomd.sh \
    init.trustonic.rsutokenbackup.sh \
    qca6234-service.sh \
    txpowerwifi.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.EAG.nfc.rc \
    init.EAG.target.rc \
    init.LMS.target.rc \
    init.OD6.rtc.rc \
    init.OD6.shirda.rc \
    init.OD6.target.rc \
    init.RHD.chromatix.rc \
    init.RHD.target.rc \
    init.TRD.target.rc \
    init.audio.fqc.rc \
    init.audio.smartamp.lms.rc \
    init.audio.smartamp.rc \
    init.fih.elabel.rc \
    init.fih.ramdump.rc \
    init.lcm.rc \
    init.msm.usb.configfs.rc \
    init.nfc.sec.rc \
    init.poweroff_charging.rc \
    init.qcom.battery.rc \
    init.qcom.emmc.rc \
    init.qcom.factory.rc \
    init.qcom.fs.rc \
    init.qcom.lcm.rc \
    init.qcom.rc \
    init.qcom.sensor.rc \
    init.qcom.target.rc \
    init.qcom.tp.rc \
    init.qcom.usb.rc \
    init.qcom.wifi.rc \
    init.sku.rc \
    init.target.rc \
    init.trustonic.rc \
    vendor.nxp.hardware.nfc@1.1-service.rc \
    vendor.sec.hardware.nfc@1.1-service.rc \
    init.rc \
    init.recovery.qcom.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/qualcomm/fih_sdm429_64/fih_sdm429_64-vendor.mk)
