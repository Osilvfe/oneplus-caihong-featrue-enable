# 解除cpu频率限制
echo 1 > /proc/game_opt/disable_cpufreq_limit

# 伪装温度
echo "0 37000" > /proc/shell-temp
echo "1 37000" > /proc/shell-temp
echo "2 37000" > /proc/shell-temp

# 关闭温控解除限制
while :
do
    setprop init.svc.thermal-engine stopped
    setprop init.svc.android.thermal-hal stopped
    sleep 5
done


settings put system peak_refresh_rate 1
settings put global settings_app_locale_opt_in_enabled false
resetprop ro.vendor.oplus.camera.isHasselbladCamera 1
resetprop ro.vendor.oplus.camera.isSupportExplorer 1
