MODEL_NAME="Qwen3.5-35B-A3B"
QUANTIZATION="UD-Q4_K_XL"
MODELS_HOME_FOLDER="/data/models/unsloth/$MODEL_NAME-GGUF"


echo "Model path: $MODEL_PATH"

# Run llama-cli from $LLAMA_HOME folder with the following command:
cd "$LLAMA_HOME"
./llama-cli \
    --model "${MODELS_HOME_FOLDER}/${MODEL_NAME}-${QUANTIZATION}.gguf" \
    --mmproj "${MODELS_HOME_FOLDER}/mmproj-F16.gguf" \
    --seed 3407 \
    --temp 1.0 \
    --top-p 0.95 \
    --min-p 0.01 \
    --top-k 40

Qwen3.5-35B-A3B-GGUF-GGUF-UD-Q4_K_XL.gguf
Qwen3.5-35B-A3B-UD-Q4_K_XL.gguf