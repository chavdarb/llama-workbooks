# llama-workbooks
Local workbooks for running models using llama.cpp

## Running Qwen3.5-35B-A3B

This repository contains scripts for running the Qwen3.5-35B-A3B model with various quantizations.

### Model Details
- **Model Name**: Qwen3.5-35B-A3B
- **Quantization**: UD-Q4_K_XL (unsloth quantization)
- **Architecture**: 35 billion parameters
- **Framework**: llama.cpp

### Scripts

#### `startQwen35_35B-A3B.sh`
This script runs the Qwen3.5-35B-A3B model with the following configuration:
- Uses the UD-Q4_K_XL quantization
- Includes multimodal projection file (mmproj-F16.gguf)
- Sets seed to 3407 for reproducible results
- Temperature set to 1.0 for balanced creativity and coherence
- Top-p sampling set to 0.95
- Min-p sampling set to 0.01
- Top-k sampling set to 40

#### `benchQwen35_35B-A3B.sh`
This script runs benchmark tests for the Qwen3.5-35B-A3B model with the following parameters:
- Uses the UD-Q4_K_XL quantization
- Tests various prompt lengths: 512, 1024, 2048, 4096, 8192, 16384, 32768
- Tests various sequence lengths: 128, 256, 512, 1024, 2048
- Uses 99 GPU layers (ngl 99)
- Sets flash attention to 0,1

### Quantization Information
The model uses unsloth quantizations from: https://unsloth.ai/docs/models/qwen3.5

### Requirements
- llama.cpp installed and configured on system path
- llama-swap installed and configured on system path
- Model files need to be in '/data/models' folder


