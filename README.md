A simple buildroot makefile for python-ecdsa.

### Installation
```bash
$ cd $YOUR_BUILDROOT_DIR
$ git clone https://github.com/nybex/buildroot-python-ecdsa.git package/python-ecdsa
$ echo 'source "package/python-ecdsa/Config.in"' >> Config.in
$ make menuconfig # Select python-ecdsa on the first screen
```
