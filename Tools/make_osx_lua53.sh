mkdir -p ../build/intermediates/build_osx && pushd ../build/intermediates/build_osx
cmake -GXcode ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_osx --config Release
mkdir -p ../build/plugin_lua53/Plugins/xlua.bundle/Contents/MacOS/
cp ../build/intermediates/build_osx/Release/xlua.bundle/Contents/MacOS/xlua ../build/plugin_lua53/Plugins/xlua.bundle/Contents/MacOS/xlua

