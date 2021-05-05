# gst

Steps to build GNU Smalltalk on Debian-based distros

## Dependencies

Install the necessary packages

```sh
apt-get install build-essential libgtk2.0-dev libgtk2.0-doc libreadline-dev freeglut3-dev cmake libsigsegv-dev flex bison
```
## Get the source

```sh
git clone git://git.sv.gnu.org/smalltalk.git
```

## Compile the source code

```sh
cd smalltalk

autoreconf -vi

./configure --verbose --enable-gtk=yes --enable-glibtest --enable-threads=posix

make
```

## Verifying the compilation

```sh
make check
```

## Installing

```sh
make install
```

## Enabling libraries

```sh
vim /etc/ld.so.conf.d/smalltalk.conf
```

add the path of the GNU Smalltalk libraries

```sh
/usr/local/lib/smalltalk
```

If that doesn't work, use the next command line to start GNU Smalltalk Browser:

```sh
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/smalltalk gst-browser
```
