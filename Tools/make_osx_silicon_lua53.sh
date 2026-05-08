mkdir -p build_osx_silicon && cd build_osx_silicon
cmake -DBUILD_SILICON=ON -GXcode ../src/xLua.Native/
cd ..
cmake --build build_osx_silicon --config Release
mkdir -p ../build/plugin_lua53/Plugins/arm64/
cp build_osx_silicon/Release/libxlua.dylib ../build/plugin_lua53/Plugins/arm64/

