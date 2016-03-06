#!/bin/bash
# simple stupid functional test

mkdir test
touch test/vzdump-lxc-1-2014_01_01-00_00_00.tar.gz
touch test/vzdump-lxc-1-2014_01_01-00_00_00.log
touch test/vzdump-lxc-1-2015_01_01-00_00_00.tar.gz
touch test/vzdump-lxc-1-2015_01_01-00_00_00.log
touch test/vzdump-lxc-1-2016_01_01-00_00_00.tar.gz
touch test/vzdump-lxc-1-2016_01_01-00_00_00.log
touch test/vzdump-lxc-2-2014_01_01-00_00_00.tar.gz
touch test/vzdump-lxc-2-2014_01_01-00_00_00.log
touch test/vzdump-lxc-2-2015_01_01-00_00_00.tar.gz
touch test/vzdump-lxc-2-2015_01_01-00_00_00.log
touch test/vzdump-lxc-2-2016_01_01-00_00_00.tar.gz
touch test/vzdump-lxc-2-2016_01_01-00_00_00.log

if [ `ls test | wc -l` != 12 ]; then exit 1; fi
python pveretention -l ./test --vm 1 -d 730
if [ `ls test | wc -l` != 10 ]; then exit 2; fi
python pveretention -l ./test --vm 2 -c 2
if [ `ls test | wc -l` != 8 ]; then exit 3; fi
python pveretention -l ./test -c 1
if [ `ls test | wc -l` != 4 ]; then exit 4; fi
python pveretention -l ./test -c 1
if [ `ls test | wc -l` != 4 ]; then exit 5; fi
