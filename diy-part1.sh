#!/bin/bash
#
# For instance, you can edit the feeds.conf.default to induct packages you need.
# This is followed by some editing examples.

# # Clear the feeds.conf.default and append the feed sources you need one by one:
#cat /dev/null > a.txt
#echo 'src-git-full packages https://git.openwrt.org/feed/packages.git;openwrt-22.03' >> feeds.conf.default
#echo 'src-git-full luci https://git.openwrt.org/project/luci.git;openwrt-22.03' >> feeds.conf.default
#echo 'src-git-full routing https://git.openwrt.org/feed/routing.git;openwrt-22.03' >> feeds.conf.default
#echo 'src-git-full telephony https://git.openwrt.org/feed/telephony.git;openwrt-22.03' >> feeds.conf.default

# # Replace a feed source with what you want:
#sed '/feeds-name/'d feeds.conf.default
#echo 'method feed-name path/URL' >> feeds.conf.default

# # Uncomment a feed source:
#sed -i 's/^#\(.*feed-name\)/\1/' feeds.conf.default

# # 将 feeds.conf.default 中 src-git-full 替换为 src-git 以减少克隆深度:
sed -i 's/src-git-full/src-git/g' feeds.conf.default

# You can also modify the source code by patching.
# # Here's a template for patching:
#touch example.patch
#cat>example.patch<<EOF
#patch content
#EOF
#git apply example.patch

# # 修改 Lan 默认IP为192.168.2.1
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
