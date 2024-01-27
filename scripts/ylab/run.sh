#!/bin/bash

# ybatch scripts/ylab/humaneval.sh aurora-m/Aurora-90k-hf 1 True 0.8 0.95
# ybatch scripts/ylab/mbpp.sh meta-llama/Llama-2-7b-hf 1 True 0.8 0.95
# ybatch scripts/ylab/humaneval.sh meta-llama/Llama-2-7b-hf 1 True 0.8 0.95

model_name=aurora-m/Aurora-90k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-103.9k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-80k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-70k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-60k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-50k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-40k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-30k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-20k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-10k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=bigcode/starcoderplus
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=bigcode/starcoderbase
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95


model_name=aurora-m/Aurora-102k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-95k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95

model_name=aurora-m/Aurora-97.5k-hf
ybatch scripts/ylab/mbpp.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 1 False 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name10 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 10 True 0.8 0.95
ybatch scripts/ylab/mbpp.sh $model_name 100 True 0.8 0.95
ybatch scripts/ylab/humaneval.sh $model_name 100 True 0.8 0.95