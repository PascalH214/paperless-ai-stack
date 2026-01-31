#!/bin/bash
/bin/ollama serve &
pid=$!

sleep 5

echo "Download models"
ollama pull qwen3-vl:32b
echo "Downloading models done"

wait $pid
