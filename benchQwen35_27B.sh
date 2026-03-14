#!/usr/bin/env bash

MODEL_NAME="Qwen3.5-27B"
QUANTIZATION="UD-Q4_K_XL"
MODELS_HOME_FOLDER="/data/models/unsloth/$MODEL_NAME-GGUF"


echo "Model path: $MODEL_PATH"

# Run llama-cli from $LLAMA_HOME folder with the following command:
cd "$LLAMA_HOME"
./llama-bench \
    --model "${MODELS_HOME_FOLDER}/${MODEL_NAME}-${QUANTIZATION}.gguf" \
    -ngl 99 -fa 0,1 -p 512,1024,2048,4096,8192,16384 -n 128,256,512,1024,2048