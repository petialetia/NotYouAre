mkdir -p build
cd build
cmake -DCODE_COVERAGE=ON ..
cmake --build . --target ccov -j 16
open ccov/Tests/index.html
