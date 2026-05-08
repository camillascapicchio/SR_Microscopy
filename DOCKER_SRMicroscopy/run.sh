#!/bin/bash
set -e

echo "=== ESRGAN START ==="

INPUT_FILE=$1
OUTPUT_DIR=$2

echo "Input file: $INPUT_FILE"
echo "Output dir: $OUTPUT_DIR"

# === 1. RICREA STRUTTURA ATTESA DAL YAML ===
DATASET_DIR=/app/datasets/WF/test_set

mkdir -p $DATASET_DIR

# copia il PNG nella cartella attesa da BasicSR
cp "$INPUT_FILE" "$DATASET_DIR/"

# rimuove eventuali cartelle spurie
rm -rf *.png
rm -rf *.jpg

# === 2. ESECUZIONE ===
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml

# === 3. RACCOGLI OUTPUT ===
#mkdir -p "$OUTPUT_DIR"

# BasicSR salva normalmente in ./results/
#if [ -d "results" ]; then
#   find results -name "*.png" -exec cp {} "$OUTPUT_DIR/" \;
#fi

#echo "=== ESRGAN DONE ==="
#``

mkdir -p "$OUTPUT_DIR"


echo "=== ESRGAN DONE ==="
