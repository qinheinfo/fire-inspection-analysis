# fire-inspection-analysis

## Statement on LLM Usage

In this paper, the large language model, ChatGPT 3.5, was used for multiple purposes. It helped to address code issues during data analysis. It was also used to improve language clarity and in the Abstract, Introduction, Data, and Limitations sections of the paper. The entire chat is available at: `inputs/llm/usage.txt`. 

## Overview

This paper analyzes Toronto Fire Services' fire inspection dataset from OpenDataToronto [@Fire-Inspection-Results], examining properties with and without Fire Code violations. The structured sections cover data details, trend results, critical discussion, and a brief conclusion summarizing key findings and their implications for public safety.

## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.