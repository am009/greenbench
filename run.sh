#!/bin/bash

EXPERIMENT_NAME=green-1
PATH_TO_CUSTOM_CORPUS=`realpath custom_seeds`

source .venv/bin/activate

PYTHONPATH=. python3 experiment/run_experiment.py \
--experiment-config experiment-config.yaml \
--benchmarks freetype2-2017 bloaty_fuzz_target \
--experiment-name $EXPERIMENT_NAME \
--fuzzers afl libfuzzer \
--allow-uncommitted-changes \
--custom-seed-corpus-dir $PATH_TO_CUSTOM_CORPUS
