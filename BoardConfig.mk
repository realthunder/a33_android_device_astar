# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/softwinner/polaris-common/BoardConfigCommon.mk

# bt default config
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/softwinner/astar-y3/bluetooth

#recovery
TARGET_RECOVERY_UI_LIB := librecovery_ui_astar_y3

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

# wifi and bt configuration
# 1. Wifi Configuration
# 1.1 realtek wifi support 
# 1.1  realtek wifi configuration
BOARD_WIFI_VENDOR := realtek
ifeq ($(BOARD_WIFI_VENDOR), realtek)
    WPA_SUPPLICANT_VERSION := VER_0_8_X
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
    BOARD_HOSTAPD_DRIVER        := NL80211
    BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl

    SW_BOARD_USR_WIFI := rtl8188eu
    BOARD_WLAN_DEVICE := rtl8188eu

    #SW_BOARD_USR_WIFI := rtl8723au
    #BOARD_WLAN_DEVICE := rtl8723au
    
    #SW_BOARD_USR_WIFI := rtl8723bs
    #BOARD_WLAN_DEVICE := rtl8723bs
endif

# 1.2 broadcom wifi support
#BOARD_WIFI_VENDOR := broadcom
ifeq ($(BOARD_WIFI_VENDOR), broadcom)
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    WPA_SUPPLICANT_VERSION      := VER_0_8_X
    BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
    BOARD_HOSTAPD_DRIVER        := NL80211
    BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
    BOARD_WLAN_DEVICE           := bcmdhd
    WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"

    #SW_BOARD_USR_WIFI := AP6181
    SW_BOARD_USR_WIFI := AP6210
    WIFI_DRIVER_FW_PATH_STA    := "/system/vendor/modules/fw_bcm40181a2.bin"
    WIFI_DRIVER_FW_PATH_P2P    := "/system/vendor/modules/fw_bcm40181a2_p2p.bin"
    WIFI_DRIVER_FW_PATH_AP     := "/system/vendor/modules/fw_bcm40181a2_apsta.bin"

    #SW_BOARD_USR_WIFI := AP6330
    #WIFI_DRIVER_FW_PATH_STA    := "/system/vendor/modules/fw_bcm40183b2_ag.bin"
    #WIFI_DRIVER_FW_PATH_P2P    := "/system/vendor/modules/fw_bcm40183b2_ag_p2p.bin"
    #WIFI_DRIVER_FW_PATH_AP     := "/system/vendor/modules/fw_bcm40183b2_ag_apsta.bin"

endif

#1.3 eag wifi config
#BOARD_WIFI_VENDOR := eagle
ifeq ($(BOARD_WIFI_VENDOR), eagle)
    WPA_SUPPLICANT_VERSION := VER_0_8_X
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_eagle
    BOARD_HOSTAPD_DRIVER        := NL80211
    BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_eagle

    SW_BOARD_USR_WIFI := esp8089
    BOARD_WLAN_DEVICE := esp8089

endif

# 2. Bluetooth Configuration
# make sure BOARD_HAVE_BLUETOOTH is true for every bt vendor
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
#SW_BOARD_HAVE_BLUETOOTH_NAME := ap6210
#SW_BOARD_HAVE_BLUETOOTH_NAME := ap6330
BOARD_HAVE_BLUETOOTH_RTK := true
BLUETOOTH_HCI_USE_RTK_H5 := true
SW_BOARD_HAVE_BLUETOOTH_NAME := rtl8723bs

# boostup code will on command to set CPU roomage and DDR freq
# default enable
TARGET_USE_BOOSTUP_OPZ := true
