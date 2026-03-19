#!/usr/bin/env bash

# Default port
PORT="${1:-8080}"

MODEL_NAME="Qwen3.5-27B"
QUANTIZATION="UD-Q4_K_XL"
MODELS_HOME_FOLDER="/data/models/unsloth/$MODEL_NAME-GGUF"


echo "Model path: $MODEL_PATH"

# Run llama-server from $LLAMA_HOME folder with the following command:
cd "$LLAMA_HOME"
exec ./llama-server \
    --model "${MODELS_HOME_FOLDER}/${MODEL_NAME}-${QUANTIZATION}.gguf" \
    --mmproj "${MODELS_HOME_FOLDER}/mmproj-F16.gguf" \
    --ctx-size 65536 \
    --temp 0.6 \
    --top-p 0.95 \
    --min-p 0.00 \
    --top-k 20 \
    --port "$PORT" \
    --flash-attn on \
    --split-mode layer \
    --tensor-split 1,1 \
    --cache-type-k bf16 \
    --cache-type-v bf16 \
    --presence-penalty 1.5 \
    --repeat-penalty 1.0    
