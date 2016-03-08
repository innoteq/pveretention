#!/bin/bash
# simple stupid functional test

set -x

#cleanup previous runs
rm -rf backup
rm -rf target

mkdir backup
touch backup/vzdump-lxc-1-2014_01_01-00_00_00.tar.gz
touch backup/vzdump-lxc-1-2014_01_01-00_00_00.log
touch backup/vzdump-lxc-1-2015_01_01-00_00_00.tar.gz
touch backup/vzdump-lxc-1-2015_01_01-00_00_00.log
touch backup/vzdump-lxc-1-2016_01_01-00_00_00.tar.gz
touch backup/vzdump-lxc-1-2016_01_01-00_00_00.log
touch backup/vzdump-lxc-2-2014_01_01-00_00_00.tar.gz
touch backup/vzdump-lxc-2-2014_01_01-00_00_00.log
touch backup/vzdump-lxc-2-2015_01_01-00_00_00.tar.gz
touch backup/vzdump-lxc-2-2015_01_01-00_00_00.log
touch backup/vzdump-lxc-2-2016_01_01-00_00_00.tar.gz
touch backup/vzdump-lxc-2-2016_01_01-00_00_00.log
mkdir target

if [ `ls backup | wc -l` != 12 ] || [ `ls target | wc -l` != 0 ]; then exit 1; fi
python pveretention -l ./backup --vm 1 -d 730 -a ./target
if [ `ls backup | wc -l` != 10 ] || [ `ls target | wc -l` != 2 ]; then exit 2; fi
python pveretention -l ./backup --vm 2 -c 2 -a ./target
if [ `ls backup | wc -l` != 8 ] || [ `ls target | wc -l` != 4 ]; then exit 3; fi
python pveretention -l ./backup -c 1 -a ./target
if [ `ls backup | wc -l` != 4 ] || [ `ls target | wc -l` != 8 ]; then exit 4; fi
python pveretention -l ./backup -c 1 -a ./target
if [ `ls backup | wc -l` != 4 ] || [ `ls target | wc -l` != 8 ]; then exit 5; fi


