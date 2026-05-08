cd luajit-2.1.0b3
make clean
make CC="gcc -m32"
popd
mkdir -p ../build/intermediates/build_linux32_lj && pushd ../build/intermediates/build_linux32_lj
cmake -DUSING_LUAJIT=ON -DCMAKE_C_FLAGS=-m32 -DCMAKE_CXX_FLAGS=-m32 -DCMAKE_SHARED_LINKER_FLAGS=-m32 ../../../src/xLua.Native/
popd
cmake --build ../build/intermediates/build_linux32_lj --config Release

