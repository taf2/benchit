#!/bin/sh
RVM_BIN=`which rvm`
RVM_SRC=$RVM_BIN/../../scripts/rvm

. $RVM_SRC

rvm use jruby@mustache --create && gem install bundler && bundle install --local
rvm use ree@mustache --create && gem install bundler && bundle install --local
rvm use ruby-1.9.3-p0@mustache --create && gem install bundler && bundle install --local
