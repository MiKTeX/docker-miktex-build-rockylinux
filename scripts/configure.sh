#!/bin/sh
package_revision=${1-1}
cd /miktex/build
cmake \
    -DMIKTEX_PACKAGE_REVISION=${package_revision} \
    -DMIKTEX_LINUX_DIST=rockylinux \
    -DMIKTEX_LINUX_DIST_VERSION=9 \
    -DUSE_SYSTEM_HARFBUZZ=FALSE \
    -DUSE_SYSTEM_HARFBUZZ_ICU=FALSE \
    -DUSE_SYSTEM_LOG4CXX=FALSE \
    -DUSE_SYSTEM_URIPARSER=FALSE \
    -DWITH_UI_QT=TRUE \
    /miktex/source
