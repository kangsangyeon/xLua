cd luajit-2.1.0b3
make clean
make CFLAGS=-fPIC
popd
mkdir -p ../build/intermediates/build_linux64_lj && pushd ../build/intermediates/build_linux64_lj
cmake -DUSING_LUAJIT=ON ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_linux64_lj --config Release
mkdir -p ../build/plugin_luajit/Plugins/x86_64/
cp ../build/intermediates/build_linux64_lj/libxlua.so ../build/plugin_luajit/Plugins/x86_64/libxlua.so 

