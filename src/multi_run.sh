#!/usr/bin/env sh

out_dir="../output/gpt5-1"
model="gpt5"
prompt="Please produce a CyTOF analysis pipeline for one file."
num_iter=10

# The main loop
for i in $(seq 1 "$num_iter"); do
    # Gemini 2.5 Pro
    chatbot "$model" "$prompt" > "$out_dir/output_$i.txt"
done

# Print out the script for logging purposes
cat "$0" > "$out_dir/script.txt"
