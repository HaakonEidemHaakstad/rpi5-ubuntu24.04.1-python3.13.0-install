Command-line script for installing Python v. 3.13.0 on Raspberry pi 5 running Ubuntu version 24.04.1 (Noble Numbat).

Tested on a fresh Ubuntu install on a Raspberry pi 5 with 8GB RAM. All dependencies should be included.

./configure options limited to --enable-optimizations. Including --with-lto led to failed tests and warnings, and including --disable-gil and --enable-experimental-jit caused crashes.
