# CyTOF pipeline LLM experiment

## Introduction

This project aimed to broadly test the frontier LLMs at their ability to generate a simple CyTOF analysis pipeline for a single file. This project contains the code to generate the output, the output itself, and a R Markdown that visualizes the package choices for each run.

## Contents of this repo

### The script

Go to src/multi_run.sh to run the code to generate the output. Note that in order for this to work, you will have to make a separate script called chatbot.py. I walk you through how to do this in [this article](https://tjburns08.github.io/command_line_writeup.html) on my [website](https://tjburns08.github.io/).

### The output

Go to output/ to find the folders for each model's output, which contain 10 text files and the tailored script to generate that particular output (a tailred version of multi_run.sh). You'll see a llm_testing_single_run folder here as well, which I used to make small tests prior to doing the mutli-run workflow. 

You'll see a folder called package_harvest. This contains package_harvest.txt, which contains the packages used in each run.

You'll also see a folder called run_notes. This contains two org-mode files (they can be read as simple textfiles), one of which is run_llm_red_team.org, which took one output file from each model and red-teamed the output in order to find anything that I missed manually looking through it. The other file is run_notes.org, which is my notes that I took as I was going through each of the files myself.
