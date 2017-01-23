PROJ=Cellular

all: build

.PHONY: build
build: clean
	stack exec clash -- -clash-inline-limit=40 -clash-hdlsyn Vivado --vhdl ${PROJ}.hs

.PHONY: clean
clean:
	rm -rf vhdl/${PROJ}/
