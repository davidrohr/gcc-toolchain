#!/bin/sh -ex
rm -rf binutils* gcc* gdb* mpfr* isl* mpc* gmp* autoconf-archive* ccache*
curl -L https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.24.tar.bz2 | tar -xjf -
curl -L ftp://ftp.gnu.org/gnu/binutils/binutils-2.42.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/gcc/gcc-13.2.0/gcc-13.2.0.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/gdb/gdb-14.2.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/mpfr/mpfr-4.2.1.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz | tar xzf -
curl -L ftp://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/autoconf-archive/autoconf-archive-2022.02.11.tar.xz | tar xJf -
curl -L https://github.com/ccache/ccache/releases/download/v4.9.1/ccache-4.9.1.tar.xz | tar xJf -
curl -L https://github.com/Kitware/CMake/archive/refs/tags/v3.29.2.tar.gz | tar xzf -

mv CMake* cmake
mv binutils* binutils
mv ccache* ccache
mv gcc* gcc
mv gdb* gdb
mv autoconf-archive* autoconf-archive
mv mpfr* gcc/mpfr
mv gmp* gcc/gmp
mv isl* gcc/isl
mv mpc* gcc/mpc

rm -fr gcc/.gitignore
