# 3G Modem Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/polaris-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/polaris-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/polaris-common/rild/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/polaris-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/astar-y3/ril_modem/longcheer/wm5608/libsoftwinner-ril-longcheer-wm5608.so:system/lib/libsoftwinner-ril-longcheer-wm5608.so

PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/ril_modem/longcheer/wm5608/init.longcheer_wm5608.rc:root/init.sun6i.3g.rc
