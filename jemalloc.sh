apt install -y bzip2 autoconf automake libtool make autogen autoconf lsof
wget https://github.com/smithwhere/jemalloc/releases/download/jemalloc/jemalloc-5.3.0.tar.bz2
tar -jxvf jemalloc-5.3.0.tar.bz2
cd jemalloc-5.3.0
apt -y install autogen autoconf
./autogen.sh
make -j2 && make install
ldconfig
cd ..
