mkdir build
cd build

cmake ^
    -G "NMake Makefiles" ^
    -DBUILD_TESTING=OFF ^
    "%SRC_DIR%"
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
