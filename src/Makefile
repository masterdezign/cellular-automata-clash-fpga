PROJ=Cellular

all: build

.PHONY: build
build: clean
	stack exec clash -- --resolver=lts-12.19 --vhdl ${PROJ}.hs

.PHONY: clean
clean:
	rm -rf vhdl/${PROJ}/
