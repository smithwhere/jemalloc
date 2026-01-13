apt install -y bzip2 autoconf automake libtool make autogen autoconf lsof autogen autoconf
wget https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2
bzip2 -d jemalloc-5.3.0.tar.bz2
tar -xf jemalloc-5.3.0.tar
cd jemalloc-5.3.0
./autogen.sh
./configure
make -j2 && make install
ldconfig
cd ..
