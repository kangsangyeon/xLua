mkdir -p ../build/intermediates/build_lj_osx && pushd ../build/intermediates/build_lj_osx
cmake -DUSING_LUAJIT=ON  -GXcode ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_lj_osx --config Release
mkdir -p ../build/plugin_luajit/Plugins/xlua.bundle/Contents/MacOS/
cp ../build/intermediates/build_lj_osx/Release/xlua.bundle/Contents/MacOS/xlua ../build/plugin_luajit/Plugins/xlua.bundle/Contents/MacOS/xlua

