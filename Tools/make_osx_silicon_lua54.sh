mkdir -p ../build/intermediates/build_osx_54_silicon && pushd ../build/intermediates/build_osx_54_silicon
cmake -DBUILD_SILICON=ON -DLUA_VERSION=5.4.1 -GXcode ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_osx_54_silicon --config Release
mkdir -p ../build/plugin_lua54/Plugins/arm64
cp ../build/intermediates/build_osx_54_silicon/Release/libxlua.dylib ../build/plugin_lua54/Plugins/arm64/

