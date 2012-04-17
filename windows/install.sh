#!/bin/bash
SOURCE=$PWD
TARGET=~

rm -f $TARGET/.bashrc
ln -s $SOURCE/.bashrc $TARGET/.bashrc
