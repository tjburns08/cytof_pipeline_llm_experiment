# CyTOF pipeline LLM experiment

## Introduction

This project aimed to broadly test the frontier LLMs at their ability to generate a simple CyTOF analysis pipeline for a single file. This project contains the code to generate the output, the output itself, and a R Markdown that visualizes the package choices for each run.

## Contents of this repo

### The script

Go to src/multi_run.sh to run the code to generate the output. Note that in order for this to work, you will have to make a separate script called chatbot.py. I walk you through how to do this in [this article](https://tjburns08.github.io/command_line_writeup.html) on my [website](https://tjburns08.github.io/).

### The output

Go to output/ to find the folders for each model's output, which contain 10 text files and the tailored script to generate that particular output (a tailred version of multi_run.sh). You'll see a llm_testing_single_run folder here as well, which I used to make small tests prior to doing the mutli-run workflow. 

You'll see a folder called package_harvest. This contains package_harvest.txt, which contains the packages used in each run.

You'll also see a folder called run_notes. This contains two org-mode files (an Emacs version of Markdown) and a text file, one of which is run_llm_red_team.txt (originally run_llm_red_team.org, but GitHub did not recognize some of the output, so I made it into a text file for the reader), which took one output file from each model and red-teamed the output in order to find anything that I missed manually looking through it. The other file is run_notes.org, which is my notes that I took as I was going through each of the files myself.

## Suggestions

If you have experience with programmatic CyTOF analysis, have a look at the LLM outputs and see how it compares to how you would do an analysis pipeline? What is missing? What is right? What is flat out wrong?

Try running some of the code chunks. In some instances, a top-to-bottom script is offered. Try running that. Where does it break?

Take the code from multi_run.sh, and change the prompt to make it more specific. Have the LLMs give you a multiple-file run. See what statistical software (e.g. diffcyt) and batch effect correction modalities it chooses by default, and whether the code that it gives you is sensical.

Try adding a red-team pass to the script. Combine the initial prompt, the initial output and results of the red-team output into a single string and have that be the prompt, and see if the subsequent output is more rigorous and/or overengineered.
