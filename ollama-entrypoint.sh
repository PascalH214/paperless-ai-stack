#!/bin/bash
/bin/ollama serve &
pid=$!

sleep 5

echo "Download models"
ollama pull llama3.2:3b
ollama pull ministral-3:14b
echo "Downloading models done"

wait $pid
