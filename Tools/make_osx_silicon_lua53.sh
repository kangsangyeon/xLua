mkdir -p ../build/intermediates/build_osx_silicon && pushd ../build/intermediates/build_osx_silicon
cmake -DBUILD_SILICON=ON -GXcode ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_osx_silicon --config Release
mkdir -p ../build/plugin_lua53/Plugins/arm64/
cp ../build/intermediates/build_osx_silicon/Release/libxlua.dylib ../build/plugin_lua53/Plugins/arm64/

