# 3G Modem Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/polaris-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/polaris-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/polaris-common/rild/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/polaris-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/astar-y3/ril_modem/huawei/mu509/libsoftwinner-ril-huawei-mu509.so:system/lib/libsoftwinner-ril-huawei-mu509.so

PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/ril_modem/huawei/mu509/init.huawei_mu509.rc:root/init.sun6i.3g.rc
