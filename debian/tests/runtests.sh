#!/bin/bash
set -e
ncpu="$(grep 'processor' /proc/cpuinfo | wc -l)"

make mkdir
tmp="$(find build -type d -path '*release')"

cp -av /usr/lib/$(dpkg-architecture -qDEB_HOST_MULTIARCH)/libtbb* ${tmp}/

cd src; make test_release_no_depends -j${ncpu}; cd ..
