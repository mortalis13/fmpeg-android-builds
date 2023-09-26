#!/bin/sh
export CFLAGS=-static-libgcc
export CXXFLAGS=-static-libgcc
export LDFLAGS=-static-libgcc
./configure --disable-static --enable-shared --disable-programs --disable-doc --disable-avdevice --disable-avformat --disable-swresample --disable-swscale --disable-postproc --disable-avfilter --disable-network --disable-dxva2 --disable-vaapi --disable-vdpau --disable-everything --disable-iconv --disable-debug --enable-runtime-cpudetect --enable-decoder=mp3float --enable-decoder=vorbis --enable-decoder=aac --enable-stripping --build-suffix=-fb2k || exit $?
make || exit $?
cp libavcodec/*fb2k-*.dll .
cp libavutil/*fb2k-*.dll .
strip *.dll

cp libavcodec/*fb2k-*.def .
cp libavutil/*fb2k-*.def .
