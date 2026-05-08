mkdir -p build_lj_osx && cd build_lj_osx
cmake -DBUILD_SILICON=ON -DUSING_LUAJIT=ON  -GXcode ../src/xLua.Native/
cd ..
cmake --build build_lj_osx --config Release
mkdir -p ../build/plugin_luajit/Plugins/xlua.bundle/Contents/MacOS/
cp build_lj_osx/Release/xlua.bundle/Contents/MacOS/xlua ../build/plugin_luajit/Plugins/xlua.bundle/Contents/MacOS/xlua

