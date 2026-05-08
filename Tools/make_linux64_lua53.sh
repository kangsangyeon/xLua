mkdir -p build_linux64 && cd build_linux64
cmake ../src/xLua.Native/
cd ..
cmake --build build_linux64 --config Release
mkdir -p ../build/plugin_lua53/Plugins/x86_64/
cp build_linux64/libxlua.so ../build/plugin_lua53/Plugins/x86_64/libxlua.so 
