mkdir -p ../build/intermediates/build_ios && pushd ../build/intermediates/build_ios
cmake -DCMAKE_TOOLCHAIN_FILE=../../../src/xLua.Native/cmake/ios.toolchain.cmake -DPLATFORM=OS64 -GXcode ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_ios --config Release
mkdir -p ../build/plugin_lua53/Plugins/iOS/
cp ../build/intermediates/build_ios/Release-iphoneos/libxlua.a ../build/plugin_lua53/Plugins/iOS/libxlua.a 

