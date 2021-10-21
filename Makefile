SHELL := /bin/bash
FILE := $(lastword $(MAKEFILE_LIST))

all: 

.PHONY: help
help: 
	$(info Toolchain version: placeholder)
	$(info)
	$(info Targets: )
	@echo ""

.PHONY: build
build:
	@echo "## Building project ##"
	@cd project/build
	@cmake ..
	@make

.PHONY: run
run:
	@echo "## Running project ##"
	./project/bin/foobar

.PHONY: dummy1
dummy1:
	@echo "## Dummy 1 ##"
	make test1

.PHONY: dummy2
dummy1:
	@echo "## Dummy 2 ##"
	make test1

.PHONY: clean
clean:
	make reset
