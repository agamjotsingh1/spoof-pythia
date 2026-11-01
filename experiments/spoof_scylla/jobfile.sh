#!/bin/bash
#
#
#
# Traces:
#    libquantum_spoof
#    libquantum_idle
#
#
# Experiments:
#    nopref: --warmup_instructions=1000000 --simulation_instructions=10000000 --config=$(PYTHIA_HOME)/config/nopref.ini
#    pythia: --warmup_instructions=1000000 --simulation_instructions=10000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini
#
#
#
#
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_scylla.champsimtrace.xz > libquantum_spoof_nopref.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --l2c_prefetcher_types=scooby --config=/home/agam/Github/spoof/spoof-pythia/config/pythia.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_scylla.champsimtrace.xz > libquantum_spoof_pythia.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_idle.champsimtrace.xz > libquantum_idle_nopref.out 2>&1
/home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core --warmup_instructions=1000000 --simulation_instructions=10000000 --l2c_prefetcher_types=scooby --config=/home/agam/Github/spoof/spoof-pythia/config/pythia.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_idle.champsimtrace.xz > libquantum_idle_pythia.out 2>&1
