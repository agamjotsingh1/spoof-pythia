#!/bin/bash -l
#
#
#
# Traces:
#    libquantum_spoof
#    libquantum_idle
#
#
# Experiments:
#    nopref: --warmup_instructions=10000000 --simulation_instructions=40000000 --config=$(PYTHIA_HOME)/config/nopref.ini
#    pythia: --warmup_instructions=10000000 --simulation_instructions=40000000 --l2c_prefetcher_types=scooby --config=$(PYTHIA_HOME)/config/pythia.ini
#
#
#
#
sbatch -p debug --mincpus=1 -c 2 -J libquantum_spoof_nopref -o libquantum_spoof_nopref.out -e libquantum_spoof_nopref.err /home/agam/Github/spoof/spoof-pythia/wrapper.sh /home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core "--warmup_instructions=10000000 --simulation_instructions=40000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_kronos.champsimtrace.xz"
sbatch -p debug --mincpus=1 -c 2 -J libquantum_spoof_pythia -o libquantum_spoof_pythia.out -e libquantum_spoof_pythia.err /home/agam/Github/spoof/spoof-pythia/wrapper.sh /home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core "--warmup_instructions=10000000 --simulation_instructions=40000000 --l2c_prefetcher_types=scooby --config=/home/agam/Github/spoof/spoof-pythia/config/pythia.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_kronos.champsimtrace.xz"
sbatch -p debug --mincpus=1 -c 2 -J libquantum_idle_nopref -o libquantum_idle_nopref.out -e libquantum_idle_nopref.err /home/agam/Github/spoof/spoof-pythia/wrapper.sh /home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core "--warmup_instructions=10000000 --simulation_instructions=40000000 --config=/home/agam/Github/spoof/spoof-pythia/config/nopref.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_idle.champsimtrace.xz"
sbatch -p debug --mincpus=1 -c 2 -J libquantum_idle_pythia -o libquantum_idle_pythia.out -e libquantum_idle_pythia.err /home/agam/Github/spoof/spoof-pythia/wrapper.sh /home/agam/Github/spoof/spoof-pythia/bin/perceptron-multi-multi-no-ship-2core "--warmup_instructions=10000000 --simulation_instructions=40000000 --l2c_prefetcher_types=scooby --config=/home/agam/Github/spoof/spoof-pythia/config/pythia.ini  -traces /home/agam/Github/spoof/spoof-pythia/traces/462.libquantum-1343B.champsimtrace.xz /home/agam/Github/spoof/spoof-pythia/traces/spoof_idle.champsimtrace.xz"
