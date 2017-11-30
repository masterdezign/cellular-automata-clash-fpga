PROJ=Cellular

all: build

.PHONY: build
build: clean
	stack exec clash -- --vhdl ${PROJ}.hs

.PHONY: clean
clean:
	rm -rf vhdl/${PROJ}/
