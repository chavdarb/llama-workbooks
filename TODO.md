# TODO List

## High Priority

- [ ] Add script safety guards to all shell scripts:
	- add shebang (`#!/usr/bin/env bash`)
	- add strict mode (`set -euo pipefail`)
	- validate required env vars (`LLAMA_HOME`, optional model root override)
- [ ] Fix misleading `echo "Model path: $MODEL_PATH"` lines in scripts:
	- replace with the actual resolved model path variable
	- print a clear error if model files are missing
- [ ] Make benchmark runs reproducible and auditable:
	- write benchmark output to timestamped files under `results/`
	- include command + host/GPU metadata in each result file

## Benchmark Coverage

- [ ] Re-run `Qwen3.5-27B` benchmark to completion (previous run exited with code 130).
- [ ] Add/record `fa=1` benchmark results in addition to `fa=0` for parity checks.
- [ ] Add a small benchmark matrix for `-ngl` values (for example: 0, 40, 80, 99) to understand offload impact.

## Usability

- [ ] Add `--help` usage text to each script (show expected env vars, model paths, and examples).
- [ ] Add configurable defaults via env vars/flags:
	- quantization
	- prompt/token length lists
	- output file path
- [ ] Add Open WebUI configuration flow that works without model swapping.
- [ ] Install `llama-swap`.
- [ ] Add and configure model swapping with `llama-swap`.
- [ ] Add a top-level launcher script (or Makefile targets) for common flows:
	- `run` (interactive)
	- `bench-27b`
	- `bench-35b`

## Documentation

- [ ] Update `README.md` with exact prerequisites:
	- expected `llama.cpp` build location
	- required model files and directory layout
	- GPU/CUDA assumptions
- [ ] Add a short section on interpreting `llama-bench` results (`pp*` vs `tg*`, throughput caveats).
- [ ] Document where benchmark artifacts are stored and naming conventions.

## Nice To Have

- [ ] Add a parser script to convert benchmark output tables into CSV/Markdown summary files.
- [ ] Add a comparison report between `Qwen3.5-27B` and `Qwen3.5-35B-A3B` under the same test matrix.



