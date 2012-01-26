all: jruby rb193 ree
RVM_BIN := `which rvm`
RVM_SRC=$(RVM_BIN)/../../scripts/rvm

setup:
	./setup.sh

jruby:
	./bench.sh $@

rb193:
	./bench.sh ruby-1.9.3-p0

ree:
	./bench.sh $@
