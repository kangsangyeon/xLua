mkdir -p ../build/intermediates/build_linux32 && pushd ../build/intermediates/build_linux32
cmake -DCMAKE_C_FLAGS=-m32 -DCMAKE_CXX_FLAGS=-m32 -DCMAKE_SHARED_LINKER_FLAGS=-m32 ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_linux32 --config Release

