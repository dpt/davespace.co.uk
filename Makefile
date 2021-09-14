.PHONY: setup all tag

setup:
	nvm use 0
	ulimit -n 1024

all: setup
	gostatic -f ./config

tag:
	git tag "release-`date +%Y%m%d`"
