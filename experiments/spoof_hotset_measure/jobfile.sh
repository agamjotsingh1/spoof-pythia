#!/bin/bash
#
#
#
# Traces:
#    mcf_spoof
#
#
# Experiments:
#    nopref: --warmup_instructions=1000000 --simulation_instructions=10000000 --config=$(PYTHIA_HOME)/config/nopref.ini
#
#
#
#
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/spoof_hotset_measure.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/429.mcf-22B.champsimtrace.xz > mcf_spoof_nopref.out 2>&1
