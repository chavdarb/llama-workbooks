#!/usr/bin/env bash

# Default port
PORT="${1:-8080}"

MODEL_NAME="Qwen3.5-35B-A3B"
QUANTIZATION="UD-Q4_K_XL"
MODELS_HOME_FOLDER="/data/models/unsloth/$MODEL_NAME-GGUF"


echo "Model path: $MODEL_PATH"

# Run llama-cli from $LLAMA_HOME folder with the following command:
cd "$LLAMA_HOME"
exec ./llama-server \
    --model "${MODELS_HOME_FOLDER}/${MODEL_NAME}-${QUANTIZATION}.gguf" \
    --mmproj "${MODELS_HOME_FOLDER}/mmproj-F16.gguf" \
    -ot ".ffn_.*_exps.=CPU" \
    --temp 1.0 \
    --min-p 0.0 \
    --top-p 1.0 \
    --top-k 0.0 \
    --port $PORT    
