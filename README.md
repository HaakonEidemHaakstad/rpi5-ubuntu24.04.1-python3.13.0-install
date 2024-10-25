Command-line script/commands for installing Python v. 3.13.0 on Raspberry pi 5 running Ubuntu version 24.04.1 (Noble Numbat).

This script should by itself include everything necessary for building Python 3.13 from source. The script has been tested on a fresh Ubuntu install on a Raspberry pi 5 with 8GB RAM. If the script is to be used for a different version of Ubuntu, "noble" should be replaced by the name associated with the version in question (see https://releases.ubuntu.com/ and http://archive.ubuntu.com/ubuntu/dists/).


The ./configure options have been limited to --enable-optimizations. This is because including --with-lto led to failed tests and warnings, and including --disable-gil and --enable-experimental-jit (unfortunately, perhaps the most exciting new features of 3.13) caused crashes during compilation. 


If you wish to try to build Python 3.13 with these options, add these options to the line including ./configure as such:

./configure --enable-optimizations --with-lto --disable-gil --enable-experimental-jit



Run the script either by copy-pasting the contents of the file into the terminal (simplest way), or by running the script with the following commands: 

chmod +x pyinstall.sh
./pyinstall.sh
