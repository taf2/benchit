#!/bin/sh
RVM_BIN=`which rvm`
RVM_SRC=$RVM_BIN/../../scripts/rvm

. $RVM_SRC
echo $1
rvm use $1@mustache
echo `which ruby`
time ruby test.rb
