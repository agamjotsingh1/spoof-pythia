#!/bin/bash
#
#
#
# Traces:
#    gemsfdtd_spoof
#    bwaves_spoof
#
#
# Experiments:
#    nopref: --warmup_instructions=1000000 --simulation_instructions=10000000 --config=$(PYTHIA_HOME)/config/nopref.ini
#
#
#
#
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/spoof_hotset_measure.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/459.GemsFDTD-765B.champsimtrace.xz > gemsfdtd_spoof_nopref.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/spoof_hotset_measure.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/603.bwaves_s-891B.champsimtrace.xz > bwaves_spoof_nopref.out 2>&1
