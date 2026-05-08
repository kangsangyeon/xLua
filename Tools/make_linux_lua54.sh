mkdir -p ../build/intermediates/build_linux64_54 && pushd ../build/intermediates/build_linux64_54
cmake -DLUA_VERSION=5.4.1 ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_linux64_54 --config Release
mkdir -p ../build/plugin_lua54/Plugins/x86_64/
cp ../build/intermediates/build_linux64_54/libxlua.so ../build/plugin_lua54/Plugins/x86_64/libxlua.so 
