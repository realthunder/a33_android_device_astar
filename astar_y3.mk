$(call inherit-product, device/softwinner/polaris-common/polaris-common.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
#$(call inherit-product, device/softwinner/polaris-common/rild/polaris_3gdongle.mk)

# google pinyin
PRODUCT_PACKAGES += GooglePinyin

# init.rc, kernel
PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/kernel:kernel \
	device/softwinner/astar-y3/modules/modules/nand.ko:root/nand.ko \
	device/softwinner/astar-y3/init.sun8i.rc:root/init.sun8i.rc \
	device/softwinner/astar-y3/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
	device/softwinner/astar-y3/initlogo.rle:root/initlogo.rle  \
	device/softwinner/astar-y3/media/bootanimation.zip:system/media/bootanimation.zip \
	device/softwinner/astar-y3/media/boot.wav:system/media/boot.wav \
	device/softwinner/astar-y3/media/bootlogo.bmp:system/media/bootlogo.bmp \
	device/softwinner/astar-y3/media/initlogo.bmp:system/media/initlogo.bmp \
	device/softwinner/astar-y3/fstab.sun8i:root/fstab.sun8i \
	device/softwinner/astar-y3/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc

# wifi features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

#key and tp config file
PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/configs/sunxi-keyboard.kl:system/usr/keylayout/sunxi-keyboard.kl \
	device/softwinner/astar-y3/configs/tp.idc:system/usr/idc/tp.idc \
	device/softwinner/astar-y3/configs/gsensor.cfg:system/usr/gsensor.cfg

#copy touch and keyboard driver to recovery randisk
PRODUCT_COPY_FILES += \
    device/softwinner/astar-y3/modules/modules/disp.ko:obj/disp.ko \
    device/softwinner/astar-y3/modules/modules/sunxi-keyboard.ko:obj/sunxi-keyboard.ko \
    device/softwinner/astar-y3/modules/modules/lcd.ko:obj/lcd.ko \
    device/softwinner/astar-y3/modules/modules/gt82x.ko:obj/gt82x.ko \
    device/softwinner/astar-y3/modules/modules/gt818_ts.ko:obj/gt818_ts.ko \
    device/softwinner/astar-y3/modules/modules/ft5x_ts.ko:obj/ft5x_ts.ko \
    device/softwinner/astar-y3/modules/modules/sw-device.ko:obj/sw-device.ko

# ap6181/6210/6330 sdio wifi fw and nvram
#$(call inherit-product-if-exists, hardware/broadcom/wlan/firmware/ap6181/device-bcm.mk)
#$(call inherit-product-if-exists, hardware/broadcom/wlan/firmware/ap6210/device-bcm.mk)
#$(call inherit-product-if-exists, hardware/broadcom/wlan/firmware/ap6330/device-bcm.mk)

#rtl8723bs bt fw and config
$(call inherit-product, hardware/realtek/bluetooth/rtl8723bs/firmware/rtlbtfw_cfg.mk)

#esp8089 wifi firmware
#$(call inherit-product-if-exists, hardware/espressif/wlan/firmware/esp8089/device-esp.mk)

#vold config
PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/recovery.fstab:recovery.fstab 
# camera
PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/configs/camera.cfg:system/etc/camera.cfg \
	device/softwinner/astar-y3/configs/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml 

# camera config for camera detector
PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/hawkview/sensor_list_cfg.ini:system/etc/hawkview/sensor_list_cfg.ini

#add gms features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml 

# 3G Data Card Packages
PRODUCT_PACKAGES += \
	u3gmonitor \
	chat \
	rild \
	pppd

# 3G Data Card Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/polaris-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/polaris-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/polaris-common/rild/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/softwinner/polaris-common/rild/usb_modeswitch:system/bin/usb_modeswitch \
	device/softwinner/polaris-common/rild/call-pppd:system/xbin/call-pppd \
	device/softwinner/polaris-common/rild/usb_modeswitch.sh:system/xbin/usb_modeswitch.sh \
	device/softwinner/polaris-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/polaris-common/rild/libsoftwinner-ril.so:system/lib/libsoftwinner-ril.so
	
#PRODUCT_COPY_FILES += \
#	device/softwinner/polaris-common/rild/init.3gdongle.rc:root/init.sunxi.3gdongle.rc

# 3G Data Card usb modeswitch File
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/softwinner/polaris-common/rild/usb_modeswitch.d,system/etc/usb_modeswitch.d)

PRODUCT_PROPERTY_OVERRIDES += \
		    ro.sw.embeded.telephony = false

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.timezone=Asia/Shanghai \
	persist.sys.language=zh \
	persist.sys.country=CN

PRODUCT_PACKAGES += Bluetooth

PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.8723b_bt.used=true

#GPS Feature
#PRODUCT_PACKAGES +=  gps.polaris
#BOARD_USES_GPS_TYPE := simulator
#PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml

# evb logger
PRODUCT_COPY_FILES += \
    device/softwinner/astar-y3/tools/logger.sh:system/bin/logger.sh

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.storage_type = emulated \
	persist.sys.usb.config=mtp \
	ro.udisk.lable=Polaris \
	ro.font.scale=1.0 \
	ro.hwa.force=false \
	rw.logger=0 \
	ro.sys.bootfast=true \
	debug.hwc.showfps=0 \
	debug.hwui.render_dirty_regions=false

#for gms
PRODUCT_PROPERTY_OVERRIDES += \
        ro.sys.mutedrm=true \
        ro.adb.secure=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160 \
	ro.product.firmware=v2.0

$(call inherit-product-if-exists, device/softwinner/astar-y3/modules/modules.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/astar-y3/overlay
PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_AAPT_CONFIG := xlarge hdpi xhdpi large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_BRAND  := Allwinner
PRODUCT_NAME   := astar_y3
PRODUCT_DEVICE := astar-y3
PRODUCT_MODEL  := QUAD-CORE A33 y3
PRODUCT_MANUFACTURER := softwinner

include device/softwinner/polaris-common/prebuild/google/products/gms_base.mk
