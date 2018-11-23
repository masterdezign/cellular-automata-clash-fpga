PROJ=Cellular

all: build

.PHONY: build
build: clean
	stack exec --resolver=lts-12.19 -- clash --vhdl ${PROJ}.hs

.PHONY: clean
clean:
	rm -rf vhdl/${PROJ}/
