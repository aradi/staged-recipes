@echo on

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release -DOPENSSL_ROOT_DIR=%PREFIX% -DCMAKE_INSTALL_PREFIX=%PREFIX% ..
cmake --build . --config Release --parallel %CPU_COUNT%
cmake --install . --config Release
