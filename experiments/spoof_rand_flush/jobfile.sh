#!/bin/bash
#
#
#
# Traces:
#    bwaves_spoof
#    bwaves_idle
#
#
# Experiments:
#    nopref: --warmup_instructions=1000000 --simulation_instructions=10000000 --config=$(PYTHIA_HOME)/config/nopref.ini
#    pythia: --warmup_instructions=1000000 --simulation_instructions=10000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini
#
#
#
#
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/603.bwaves_s-891B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_rand_flush.champsimtrace.xz > bwaves_spoof_nopref.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --l2c_prefetcher_types=scooby --config=/home/agam/Github/spoof/spoof-pythia/config/pythia.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/603.bwaves_s-891B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_rand_flush.champsimtrace.xz > bwaves_spoof_pythia.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/603.bwaves_s-891B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_idle.champsimtrace.xz > bwaves_idle_nopref.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --l2c_prefetcher_types=scooby --config=/home/agam/Github/spoof/spoof-pythia/config/pythia.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/603.bwaves_s-891B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_idle.champsimtrace.xz > bwaves_idle_pythia.out 2>&1
