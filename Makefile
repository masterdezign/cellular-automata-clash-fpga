SETTINGS="/home/Xilinx/Vivado/2015.4/settings64.sh"
VIVADO_CMD="/home/Xilinx/Vivado/2015.4/bin/vivado"
RUN_DIR=run
SRC_DIR=src
PROJ=Cellular

all: build 

.PHONY: clean0
clean0:
	rm -rf ${RUN_DIR}/out${PROJ}/
	rm ${RUN_DIR}/01_setup.tcl

.PHONY: clean
clean: clean0
	cd ${SRC_DIR} && make clean PROJ=${PROJ}

.PHONY:
setup:
	source ${SETTINGS}
	cd ${RUN_DIR} && ln -s 01_setup-${PROJ}.tcl 01_setup.tcl

.PHONY:
console: setup
	cd ${RUN_DIR} && ${VIVADO_CMD} -mode tcl -source 01_setup.tcl

.PHONY:
build: clean setup
	cd ${SRC_DIR} && make build PROJ=${PROJ}
	cd ${RUN_DIR} && time ${VIVADO_CMD} -mode batch -source batch.tcl

.PHONY:
build0: clean0 setup
	cd ${RUN_DIR} && time ${VIVADO_CMD} -mode batch -source batch.tcl
