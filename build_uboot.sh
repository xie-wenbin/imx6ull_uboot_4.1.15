#!/bin/bash
make u-boot_clean
if [ $? -ne 0 ]; then
  echo "make u-boot_clean failed!!!"
  exit
fi

make u-boot
if [ $? -ne 0 ]; then
  echo "make u-boot failed!!!"
  exit
fi

make u-boot_install
