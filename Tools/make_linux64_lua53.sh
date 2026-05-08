mkdir -p ../build/intermediates/build_linux64 && pushd ../build/intermediates/build_linux64
cmake ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_linux64 --config Release
mkdir -p ../build/plugin_lua53/Plugins/x86_64/
cp ../build/intermediates/build_linux64/libxlua.so ../build/plugin_lua53/Plugins/x86_64/libxlua.so 
