mkdir -p build_ios && cd build_ios
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM=OS64 -GXcode ../src/xLua.Native/
cd ..
cmake --build build_ios --config Release
mkdir -p ../build/plugin_lua53/Plugins/iOS/
cp build_ios/Release-iphoneos/libxlua.a ../build/plugin_lua53/Plugins/iOS/libxlua.a 

