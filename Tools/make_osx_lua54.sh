mkdir -p ../build/intermediates/build_osx_54 && pushd ../build/intermediates/build_osx_54
cmake -DLUA_VERSION=5.4.1 -GXcode ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_osx_54 --config Release
mkdir -p ../build/plugin_lua54/Plugins/xlua.bundle/Contents/MacOS/
cp ../build/intermediates/build_osx_54/Release/xlua.bundle/Contents/MacOS/xlua ../build/plugin_lua54/Plugins/xlua.bundle/Contents/MacOS/xlua

