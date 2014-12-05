# oviphone em55 2G modem Configuration Flie
PRODUCT_COPY_FILES += \
	device/softwinner/polaris-common/rild/ip-down:system/etc/ppp/ip-down \
	device/softwinner/polaris-common/rild/ip-up:system/etc/ppp/ip-up \
	device/softwinner/polaris-common/rild/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/polaris-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
	device/softwinner/astar-y3/ril_modem/Oviphone/em55/libsoftwinner-ril-oviphone-em55.so:system/lib/libsoftwinner-ril-oviphone-em55.so \
	device/softwinner/astar-y3/ril_modem/Oviphone/em55/gsmMuxd:system/xbin/gsmMuxd \
	device/softwinner/astar-y3/ril_modem/Oviphone/em55/mux.d:system/xbin/mux.d \
	device/softwinner/astar-y3/ril_modem/Oviphone/em55/init.gprs-pppd:system/etc/ppp/init.gprs-pppd \
	device/softwinner/astar-y3/ril_modem/Oviphone/em55/wcdma-ppp-on-dialer:system/etc/ppp/wcdma-ppp-on-dialer

PRODUCT_COPY_FILES += \
	device/softwinner/astar-y3/ril_modem/Oviphone/em55/init.oviphone_em55.rc:root/init.sun6i.3g.rc
