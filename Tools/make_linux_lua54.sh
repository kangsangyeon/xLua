mkdir -p build_linux64_54 && cd build_linux64_54
cmake -DLUA_VERSION=5.4.1 ../src/xLua.Native/
cd ..
cmake --build build_linux64_54 --config Release
mkdir -p ../build/plugin_lua54/Plugins/x86_64/
cp build_linux64_54/libxlua.so ../build/plugin_lua54/Plugins/x86_64/libxlua.so 
