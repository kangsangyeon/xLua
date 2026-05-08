cd luajit-2.1.0b3
make clean
make CFLAGS=-fPIC
cd ..
mkdir -p build_linux64_lj && cd build_linux64_lj
cmake -DUSING_LUAJIT=ON ../src/xLua.Native/
cd ..
cmake --build build_linux64_lj --config Release
mkdir -p ../build/plugin_luajit/Plugins/x86_64/
cp build_linux64_lj/libxlua.so ../build/plugin_luajit/Plugins/x86_64/libxlua.so 

