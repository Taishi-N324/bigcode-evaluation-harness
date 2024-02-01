#!/bin/bash

model_name=$1
task=$2
load_generations_path_name=$3

do_sample=$4
n_samples=$5
temperature=0.8

mkdir -p /home/taishi/workspace/code/bigcode-evaluation-harness/results/metrics/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval

sudo docker run -v \
    /home/taishi/workspace/code/bigcode-evaluation-harness:/bigcode-evaluation-harness:ro \
    -v /home/taishi/workspace/code/bigcode-evaluation-harness/results/metrics:/metrics \
    -it evaluation-harness \
    python3 main.py \
    --model $model_name \
    --tasks $task \
    --load_generations_path $load_generations_path_name \
    --allow_code_execution \
    --temperature $temperature \
    --precision bf16 \
    --do_sample $do_sample \
    --top_p 0.95 \
    --max_length_generation 512 \
    --n_samples $n_samples \
    --metric_output_path /metrics/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval/${task}_wsl.json \

# -it ghcr.io/bigcode-project/evaluation-harness-multiple:latest \
