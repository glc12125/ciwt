mkdir build
cd build
if [ "$1" = "d" ]; then
  echo "Debug mode is on"
  cmake -DDEBUG=ON ..
else
  cmake .. -DCMAKE_BUILD_TYPE=Release
fi
getCoreNumCmd="getconf _NPROCESSORS_ONLN"
coreNum=eval ${getCoreNumCmd}
echo "Number of cores: ${coreNum}"
make -j${coreNum}