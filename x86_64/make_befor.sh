#!/bin/bash

#允许ROOT编译
export FORCE_UNSAFE_CONFIGURE=1

#报错修复

cp /usr/bin/upx /workdir/openwrt/staging_dir/host/bin/
cp /usr/bin/upx-ucl /workdir/openwrt/staging_dir/host/bin/

ls
#修改后台IP
sed -i 's/192.168.1.1/192.168.32.1/g' package/base-files/files/bin/config_generate

#修改默认主题
cd ./package/
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config.git
cd ../
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

#添加 (Open App Filter)
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

#添加Docker
# git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
# git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
