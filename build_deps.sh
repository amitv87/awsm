set -e
set -x

NUM_CPU=$(getconf _NPROCESSORS_ONLN)

ROOT_DIR=$(pwd)

cd deps/libuv
sh autogen.sh
./configure
make -j $NUM_CPU

cd $ROOT_DIR

cd deps/zlib
./configure
make -j $NUM_CPU
