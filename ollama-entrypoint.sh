#!/bin/bash
/bin/ollama serve &
pid=$!

sleep 5

echo "Download models"
ollama pull ministral-3:14b
echo "Downloading models done"

wait $pid
