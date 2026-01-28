#!/bin/bash
/bin/ollama serve &
pid=$!

sleep 5

echo "Download models"
ollama pull llama3.2:3b
ollama pull minicpm-v:8b
echo "Downloading models done"

wait $pid
