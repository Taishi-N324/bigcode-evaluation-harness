#!/bin/bash
#YBATCH -r a100_1
#SBATCH --nodes 1
#SBATCH -J eval_mbpp
#SBATCH --time=168:00:00
#SBATCH --output outputs/%j.out
#SBATCH --error errors/%j.err

. /etc/profile.d/modules.sh
module load cuda/11.7
module load cudnn/cuda-11.x/8.9.0
module load nccl/cuda-11.7/2.14.3
module load openmpi/4.0.5
export HF_HOME=/home/tn/.cache
export HF_DATASETS_CACHE=/home/tn/.cache
export TRANSFORMERS_CACHE=/home/tn/.cache


source venv/bin/activate
model_name=$1
n_samples=$2
do_sample=$3
temperature=$4
top_p=$5

mkdir -p results/metrics/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval
mkdir -p results/generations/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval

accelerate launch  main.py \
    --model $model_name \
    --tasks mbpp \
    --precision bf16 \
    --temperature $temperature \
    --top_p $top_p \
    --do_sample $do_sample \
    --batch_size 1 \
    --max_length_generation 512 \
    --n_samples $n_samples \
    --allow_code_execution \
    --trust_remote_code \
    --save_generations \
    --metric_output_path results/metrics/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval/mbpp.json \
    --save_generations_path results/generations/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval/mbpp.json

echo "Done!"