#!/bin/bash
#$ -l rt_AF=1
#$ -l h_rt=24:00:00
#$ -j y
#$ -o outputs-mbpp/
#$ -cwd

# module load
source /etc/profile.d/modules.sh
module load python/3.10/3.10.10
module load cuda/11.8/11.8.0
module load cudnn/8.9/8.9.2
module load nccl/2.16/2.16.2-1
module load hpcx/2.12

export HF_HOME=/bb/llm/gaf51275/jalm/taishi/.cache
export HF_DATASETS_CACHE=/bb/llm/gaf51275/jalm/taishi/.cache
export TRANSFORMERS_CACHE=/bb/llm/gaf51275/jalm/taishi/.cache

source venv/bin/activate
model_name=$1
n_samples=$2

mkdir -p results/metrics/${model_name}_${n_samples}_eval
mkdir -p results/generations/${model_name}_${n_samples}_eval



accelerate launch  main.py \
    --model $model_name \
    --tasks humaneval  \
    --precision bf16  \
    --temperature 0.8   \
    --do_sample True  \
    --batch_size 8  \
    --allow_code_execution  \
    --trust_remote_code \
    --save_generations \
    --metric_output_path results/metrics/${model_name}_${n_samples}_eval/HumanEval.json \
    --save_generations_path results/generations/${model_name}_${n_samples}_eval/HumanEval.json

        # --generation_only \