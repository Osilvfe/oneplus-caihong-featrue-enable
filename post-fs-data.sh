#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
#MODDIR=${0%/*}
#MNT="/" #从根目录挂载（默认从/mnt/vendor/挂载）
# 这将使你的脚本更加兼容，即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}
mount --bind $MODDIR/my_bigball/etc/permissions/oplus.feature.control_cn_gms.xml /my_bigball/etc/permissions/oplus.feature.control_cn_gms.xml
mount --bind $MODDIR/my_bigball/etc/permissions/oplus_google_cn_gms_features.xml /my_bigball/etc/permissions/oplus_google_cn_gms_features.xml
mount --bind $MODDIR/my_product/etc/extension/ /my_product/etc/extension/
mount --bind $MODDIR/my_product/etc/permissions/ /my_product/etc/permissions/
mount --bind $MODDIR/my_product/etc/refresh_rate_config.xml /my_product/etc/refresh_rate_config.xml
mount --bind $MODDIR/my_product/etc/string_super_computing.zip /my_product/etc/string_super_computing.zip
mount --bind $MODDIR/my_product/etc/super_computing_config.json /my_product/etc/super_computing_config.json
mount --bind $MODDIR/my_region/etc/extension/com.oplus.app-features.xml /my_region/etc/extension/com.oplus.app-features.xml
mount --bind $MODDIR/my_product/vendor/etc/ /my_product/vendor/etc/
# 这个脚本将以 post-fs-data 模式执行(系统启动前执行)
# 更多信息请访问 Magisk 主题
