mkdir -p build_osx && cd build_osx
cmake -GXcode ../src/xLua.Native/
cd ..
cmake --build build_osx --config Release
mkdir -p ../build/plugin_lua53/Plugins/xlua.bundle/Contents/MacOS/
cp build_osx/Release/xlua.bundle/Contents/MacOS/xlua ../build/plugin_lua53/Plugins/xlua.bundle/Contents/MacOS/xlua

