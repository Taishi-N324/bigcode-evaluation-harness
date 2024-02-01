#!/bin/bash

models=(
    "aurora-m/Aurora-100k-hf"
    "aurora-m/Aurora-103.9k-hf"
    "aurora-m/Aurora-102k-hf"
    "aurora-m/Aurora-97.5k-hf"
    "aurora-m/Aurora-95k-hf"
    "aurora-m/Aurora-90k-hf"
    "aurora-m/Aurora-80k-hf"
    "aurora-m/Aurora-70k-hf"
    "aurora-m/Aurora-60k-hf"
    "aurora-m/Aurora-50k-hf"
    "aurora-m/Aurora-40k-hf"
    "aurora-m/Aurora-30k-hf"
    "aurora-m/Aurora-20k-hf"
    "aurora-m/Aurora-10k-hf"
    "bigcode/starcoderbase"
    "bigcode/starcoderplus"
)   

languages=("mbpp")

for model_name in "${models[@]}"; do
    for lang in "${languages[@]}"; do
        echo "Evaluating model ${model_name} with language ${lang}"
        bash scripts/wsl/eval-mbpp.sh \
            $model_name \
            $lang \
            /bigcode-evaluation-harness/results/generations/${model_name}_1n_samples_Falsedo_sample_0.8_temperature_eval/mbpp_mbpp.json \
            False \
            1 
    done
done

for model_name in "${models[@]}"; do
    for lang in "${languages[@]}"; do
        echo "Evaluating model ${model_name} with language ${lang}"
        bash scripts/wsl/eval-mbpp.sh \
            $model_name \
            $lang \
            /bigcode-evaluation-harness/results/generations/${model_name}_10n_samples_Truedo_sample_0.8_temperature_eval/mbpp_mbpp.json \
            True \
            10 
    done
done

for model_name in "${models[@]}"; do
    for lang in "${languages[@]}"; do
        echo "Evaluating model ${model_name} with language ${lang}"
        bash scripts/wsl/eval-mbpp.sh \
            $model_name \
            $lang \
            /bigcode-evaluation-harness/results/generations/${model_name}_100n_samples_Truedo_sample_0.8_temperature_eval/mbpp_mbpp.json \
            True \
            100 
    done
done