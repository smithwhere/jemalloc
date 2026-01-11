apt install -y bzip2 autoconf automake libtool make
wget https://github.com/smithwhere/jemalloc/releases/download/jemalloc/jemalloc-5.3.0.tar.bz2
bzip2 -d jemalloc-5.3.0.tar.bz2
tar -xf jemalloc-5.3.0.tar
cd jemalloc-5.3.0
./autogen.sh
./configure --prefix=/usr/local/jemalloc-5.3.0
make && make install
echo '/usr/local/lib' > /etc/ld.so.conf.d/local.conf
ldconfig
