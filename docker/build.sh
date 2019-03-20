#!/bin/bash

if [ ! -d "/opt/mptcp" ]; then
    mkdir -p /opt 
    git clone https://github.com/golden-finger/mptcp.git /opt/mptcp
fi

pushd /opt/mptcp
make defconfig 
make localmodconfig 
patch -p0 .config docker/.config.patch 
make-kpkg  --initrd --revision 18.04 --append-to-version -20190320 kernel_image

