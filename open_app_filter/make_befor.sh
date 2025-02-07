#!/bin/bash

#允许ROOT编译
export FORCE_UNSAFE_CONFIGURE=1

#报错修复

cp /usr/bin/upx /workdir/openwrt/staging_dir/host/bin/
cp /usr/bin/upx-ucl /workdir/openwrt/staging_dir/host/bin/

ls

#添加 (Open App Filter)
git clone --branch v5.0.2 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config

#添加Docker
# git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
# git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
