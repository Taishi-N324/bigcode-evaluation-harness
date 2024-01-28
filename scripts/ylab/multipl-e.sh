#!/bin/bash
#YBATCH -r rtx6000-ada_2
#SBATCH --nodes 1
#SBATCH -J multip_eval
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
task=$6

mkdir -p results/metrics/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval
mkdir -p results/generations/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval

MASTER_NODE=$(/usr/sbin/ip a show | grep inet | grep 192.168.205 | head -1 | cut -d " " -f 6 | cut -d "/" -f 1)
MASTER_PORT=$((10000 + ($SLURM_JOBID % 50000)))
NNODES=1
WORLD_SIZE=2

accelerate launch \
    --multi_gpu \
    --num_machines $NNODES \
    --num_processes $WORLD_SIZE \
    --main_process_ip "$MASTER_ADDR" \
    --main_process_port $MASTER_PORT \
    --num_processes $WORLD_SIZE \
    main.py \
    --model $model_name \
    --tasks $task \
    --precision bf16 \
    --temperature $temperature \
    --top_p $top_p \
    --do_sample $do_sample \
    --batch_size 1 \
    --n_samples $n_samples \
    --max_length_generation 512 \
    --trust_remote_code \
    --save_generations \
    --generation_only \
    --metric_output_path results/metrics/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval/${task}.json \
    --save_generations_path results/generations/${model_name}_${n_samples}n_samples_${do_sample}do_sample_${temperature}_temperature_eval/${task}.json \

echo "Done!"