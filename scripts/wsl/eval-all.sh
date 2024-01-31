#!/bin/bash

models=(
    "aurora-m/aurora-103.9k-hf"
    "aurora-m/aurora-102k-hf"
    "aurora-m/aurora-100k-hf"
    "aurora-m/aurora-97.5k-hf"
    "aurora-m/aurora-95k-hf"
    "aurora-m/aurora-90k-hf"
    "aurora-m/aurora-80k-hf"
    "aurora-m/aurora-70k-hf"
    "aurora-m/aurora-60k-hf"
    "aurora-m/aurora-50k-hf"
    "aurora-m/aurora-40k-hf"
    "aurora-m/aurora-30k-hf"
    "aurora-m/aurora-20k-hf"
    "aurora-m/aurora-10k-hf"
    "bigcode/starcoderbase"
    "bigcode/starcoderbase"
    "bigcode/starcoderplus"
)   

languages=("cpp" "cs" "java" "php" "sh" "ts")

for model_name in "${models[@]}"; do
    for lang in "${languages[@]}"; do
        echo "Evaluating model ${model_name} with language ${lang}"
        bash scripts/wsl/eval-mult.sh \
            $model_name \
            multiple-${lang} \
            /bigcode-evaluation-harness/results/generations/${model_name}_1n_samples_Falsedo_sample_0.8_temperature_eval/multiple-${lang}_multiple-${lang}.json
    done
done