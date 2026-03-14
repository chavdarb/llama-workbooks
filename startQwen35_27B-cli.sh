#!/usr/bin/env bash

MODEL_NAME="Qwen3.5-27B"
QUANTIZATION="UD-Q4_K_XL"
MODELS_HOME_FOLDER="/data/models/unsloth/$MODEL_NAME-GGUF"


echo "Model path: $MODEL_PATH"

# Run llama-cli from $LLAMA_HOME folder with the following command:
cd "$LLAMA_HOME"
./llama-cli \
    --model "${MODELS_HOME_FOLDER}/${MODEL_NAME}-${QUANTIZATION}.gguf" \
    --mmproj "${MODELS_HOME_FOLDER}/mmproj-F16.gguf" \
    --temp 1.0 \
    --top-p 0.95 \
    --min-p 0.00 \
    --top-k 20    
