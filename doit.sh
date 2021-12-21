#!/bin/sh

# Obtenemos el codigo fuente
#git clone git://git.sv.gnu.org/smalltalk.git

# Iniciamos la configuracion
#cd smalltalk

# Corregimos el problema del punto flotante:

export CFLAGS='-no-pie'
export LDFLAGS='-no-pie'

echo "Autoreconf"
echo
autoreconf -vi > _autoreconf.log 2>&1

echo "Configure"
echo
#./configure --verbose --enable-gtk=yes --enable-glibtest --enable-threads=posix > _configure.log 2>&1
./configure --verbose --enable-gtk=blox --enable-glibtest --enable-threads=posix > _configure.log 2>&1

echo "Compilation"
echo
make > _make.log 2>&1

#echo "Checking"
#echo
#make check > make_check.log 2>&1

#make install
