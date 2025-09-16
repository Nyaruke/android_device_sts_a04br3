# Inherit device configuration
$(call inherit-product, device/sts/a04br3/lineage_a04br3.mk)
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

TARGET_LOCALES := ja_JP en_US