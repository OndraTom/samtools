#!/bin/bash

# Let's iterate all input SAM files
for file_path in /data/in/files/*.sam; do

    # Let's extract the filename from the path
    filename=$(basename ${file_path})

    # Let's remove the SAM extension
    filename=${filename:0:-4}

    # Execute the samtools on input file and save the output as .BAM file
    echo "Executing /app/samtools-1.9/samtools sort --output-fmt BAM ${file_path} > /data/out/files/${filename}.BAM"
    /app/samtools-1.9/samtools sort --output-fmt BAM ${file_path} > /data/out/files/${filename}.BAM

done