# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./ew/squall
export CXXFLAGS="-std=c++98"

mkdir _build && cd _build
cmake ${CMAKE_ARGS} .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release
make all -j$CPU_COUNT
make install
