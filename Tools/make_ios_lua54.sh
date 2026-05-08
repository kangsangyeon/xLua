mkdir -p build_ios_54 && cd build_ios_54
cmake -DLUA_VERSION=5.4.1 -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM=OS64 -GXcode ../src/xLua.Native/
cd ..
cmake --build build_ios_54 --config Release
mkdir -p ../build/plugin_lua54/Plugins/iOS/
cp build_ios_54/Release-iphoneos/libxlua.a ../build/plugin_lua54/Plugins/iOS/libxlua.a 

