apt install -y bzip2 autoconf automake libtool
wget https://github.com/smithwhere/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2
bzip2 -d jemalloc-5.3.0.tar.bz2
tar -xf jemalloc-5.3.0.tar
cd jemalloc-5.3.0
./autogen.sh
./configure --prefix=/usr/local/jemalloc-5.3.0
make
make install
