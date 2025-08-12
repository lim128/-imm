#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '1i src-git helloworld https://github.com/sbwml/openwrt_helloworld.git;v5' feeds.conf.default
sed -i '2i src-git mosdns https://github.com/sbwml/luci-app-mosdns.git;v5' feeds.conf.default
sed -i '3i src-git momo https://github.com/nikkinikki-org/OpenWrt-momo.git;main' feeds.conf.default
sed -i '4i src-git poweroffdevice https://github.com/sirpdboy/luci-app-poweroffdevice.git;js' feeds.conf.default
