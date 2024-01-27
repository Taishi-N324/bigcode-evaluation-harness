#!/bin/bash

# qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/mbpp.sh aurora-m/Aurora-103.9k-hf 50
# qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/mbpp.sh aurora-m/Aurora-103.9k-hf 50

qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/humaneval.sh aurora-m/Aurora-103.9k-hf all
qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/humaneval.sh aurora-m/Aurora-90k-hf all
qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/humaneval.sh bigcode/starcoderbase all
qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/humaneval.sh  bigcode/starcoderplus all

qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/mbpp.sh aurora-m/Aurora-103.9k-hf all
qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/mbpp.sh aurora-m/Aurora-90k-hf all
qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/mbpp.sh bigcode/starcoderbase all
qsub -g gaf51275 -ar 26347  /bb/llm/gaf51275/llm-jp/taishi-work-space/bigcode-evaluation-harness/scripts/mbpp.sh  bigcode/starcoderplus all

