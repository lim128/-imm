#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
rm -rf feeds/{luci,packages}/{applications,lang,net}/{luci-app-daed,luci-app-openclash,luci-app-passwall,golang,chinadns-ng,daed,dns2socks-rust,dns2socks,dns2tcp,geoview,hysteria,ipt2socks,microsocks,mosdns,naiveproxy,nikki,pdnsd,redsocks2,shadow-tls,simple-obfs,sing-box,tcping,trojan-plus,trojan,tuic-client,v2ray-core,v2ray-geodata,v2ray-plugin,xray-core,xray-plugin}
git clone -b 24.x --single-branch https://github.com/sbwml/packages_lang_golang.git feeds/packages/lang/golang
git clone -b v5 --single-branch https://github.com/sbwml/openwrt_helloworld.git package/helloworld
git clone -b v5 --single-branch https://github.com/sbwml/luci-app-mosdns.git package/luci-app-mosdns
git clone -b master --single-branch https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone -b js --single-branch https://github.com/sirpdboy/luci-app-poweroffdevice.git package/luci-app-poweroffdevice
